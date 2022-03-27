class AddSocialstatusToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :socialstatus, :string
  end
end
