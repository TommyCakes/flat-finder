class AddFullNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :fullname, :string
    add_column :users, :string, :string
  end
end
