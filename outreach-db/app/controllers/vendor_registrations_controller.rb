class VendorRegistrationsController < ApplicationController
  before_action :ensure_development

  def index
    @registrations = VendorRegistration.all
  end

  def new
    @registration = VendorRegistration.new
  end

  def create
    @registration = VendorRegistration.new(registration_params)
    if @registration.save
      redirect_to vendor_registrations_path, notice: "#{@registration.state} added."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @registration = VendorRegistration.find(params[:id])
  end

  def update
    @registration = VendorRegistration.find(params[:id])
    if @registration.update(registration_params)
      redirect_to vendor_registrations_path, notice: "#{@registration.state} saved."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def registration_params
    params.require(:vendor_registration)
          .permit(:state, :vendor_url, :is_registered, :registration_username, :password, :city, :notes)
  end

  # The whole feature is development-only; refuse anywhere else.
  def ensure_development
    head :not_found unless Rails.env.development?
  end
end
