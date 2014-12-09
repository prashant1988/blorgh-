# This migration comes from blorgh (originally 20141209092906)
class AddRoleToBlorghMasters < ActiveRecord::Migration
  def change
    add_column :blorgh_masters, :role, :string
  end
end
