class AddTaggedToVerapdfReports < ActiveRecord::Migration[7.2]
  def change
    # nil = unknown (report carried no rule detail); true/false = veraPDF's
    # StructTreeRoot verdict. See VerapdfRunner.parse_tagged.
    add_column :verapdf_reports, :tagged, :boolean
  end
end
