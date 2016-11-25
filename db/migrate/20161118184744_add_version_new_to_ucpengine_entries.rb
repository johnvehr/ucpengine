class AddVersionNewToUcpengineEntries < ActiveRecord::Migration
  def change
    add_column :ucpengine_entries, :version, :datetime
  end
end
