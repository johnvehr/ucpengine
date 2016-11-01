class CreateUcpengineEntries < ActiveRecord::Migration
  def change
    create_table :ucpengine_entries do |t|
      t.string :type, index: true
      t.text :termsofservice
      t.json :payload
      t.integer :user_id, index: true

      t.decimal :version
      t.timestamps null: false
    end
  end
end
