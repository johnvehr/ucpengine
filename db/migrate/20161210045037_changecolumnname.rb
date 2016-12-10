class Changecolumnname < ActiveRecord::Migration
  def change
    rename_column :ucpengine_entries, :type, :content_type
  end
end
