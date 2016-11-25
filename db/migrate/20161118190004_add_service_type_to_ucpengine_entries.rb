class AddServiceTypeToUcpengineEntries < ActiveRecord::Migration
  def change
    add_column :ucpengine_entries, :service_type, :string
  end
end
