class AddRoleToBlorghMasters < ActiveRecord::Migration
  def change
    add_column :blorgh_masters, :role, :string
  end
end
