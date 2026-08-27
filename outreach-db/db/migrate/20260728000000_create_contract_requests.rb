class CreateContractRequests < ActiveRecord::Migration[7.2]
  def change
    create_table :contract_requests do |t|
      t.string :rfp_url
      t.string :organization_name
      t.string :status
      t.date   :due_date
      t.string :government_type

      t.timestamps
    end
  end
end
