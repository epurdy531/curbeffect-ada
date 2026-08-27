class EntitiesController < ApplicationController
  PRIORITY_ORDER = Arel.sql("CASE entities.priority WHEN 'High' THEN 0 WHEN 'Medium' THEN 1 WHEN 'Low' THEN 2 ELSE 3 END")
  SORTS = {
    "priority"  => [PRIORITY_ORDER, Arel.sql("entities.entity_name")],
    "state"     => [Arel.sql("entities.state NULLS LAST"), PRIORITY_ORDER, Arel.sql("entities.entity_name")],
    "call_date" => [Arel.sql("entities.call_date DESC NULLS LAST"), Arel.sql("entities.entity_name")],
  }.freeze

  def index
    @entities = Entity.all
    @entities = @entities.where("entity_name ILIKE :q OR url ILIKE :q", q: "%#{params[:q].strip}%") if params[:q].present?
    @entities = @entities.where(priority: params[:priority]) if params[:priority].present?
    @entities = @entities.where(state: params[:state]) if params[:state].present?
    @sort = SORTS.key?(params[:sort]) ? params[:sort] : "priority"
    @entities = @entities.order(*SORTS[@sort])
    @states = Entity.where.not(state: nil).distinct.order(:state).pluck(:state)
    # Bottom table = explicitly do-not-engage; top = everything else (true OR null).
    @active   = @entities.where("entities.continue_contact IS NOT FALSE")
    @inactive = @entities.where(continue_contact: false)
  end

  def show
    @entity = Entity.find(params[:id])
    @docs = @entity.pdf_documents.includes(:verapdf_report).to_a
      .sort_by { |d| -(d.verapdf_report&.report_failures || -1) }
  end

  def new
    @entity = Entity.new
  end

  def create
    @entity = Entity.new(entity_params)
    @entity.contact_email = placeholder_email(@entity) if @entity.contact_email.blank?
    if @entity.save
      redirect_to @entity, notice: "Entity added. Use “Scan now” to pull its PDFs."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @entity = Entity.find(params[:id])
  end

  def update
    @entity = Entity.find(params[:id])
    attrs = entity_params
    attrs[:contact_email] = placeholder_email(@entity) if attrs[:contact_email].blank?
    if @entity.update(attrs)
      redirect_to @entity, notice: "Updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @entity = Entity.find(params[:id])
    name = @entity.entity_name.presence || @entity.url
    @entity.destroy
    redirect_to entities_path, notice: "Deleted #{name}."
  end

  private

  def entity_params
    params.require(:entity).permit(:entity_name, :url, :scrapable_url, :contact_name,
                                   :contact_email, :contact_title, :platform, :priority, :notes,
                                   :state, :call_date, :email_date, :html_present, :continue_contact)
  end

  def placeholder_email(entity)
    slug = (entity.entity_name.presence || entity.url.presence || "entity").parameterize
    "noemail-#{slug}@placeholder.invalid"
  end
end
