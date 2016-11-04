class AddSlugToUcpengineEntries < ActiveRecord::Migration
  def change
    add_column :ucpengine_entries, :slug, :string, index: true
  end
end
