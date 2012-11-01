class AddUserIdToLicences < ActiveRecord::Migration
  def change
    add_column :licences, :user_id, :integer
  end
end
