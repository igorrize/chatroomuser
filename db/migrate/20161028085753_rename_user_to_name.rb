class RenameUserToName < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :user, :name
end
end
