class RenameTermsofserviceToServiceBodyInUcpengineEntries < ActiveRecord::Migration
  def up
    rename_column :ucpengine_entries, :termsofservice, :service_body
  end

  def down
    rename_column :ucpengine_entries, :service_body, :termsofservice
  end
end
