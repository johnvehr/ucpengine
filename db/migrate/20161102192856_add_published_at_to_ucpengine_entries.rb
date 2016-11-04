class AddPublishedAtToUcpengineEntries < ActiveRecord::Migration
  def change
    add_column :ucpengine_entries, :published_at, :datetime
  end
end
