class AddNotesToContractRequests < ActiveRecord::Migration[7.2]
  def change
    add_column :contract_requests, :notes, :text
  end
end
