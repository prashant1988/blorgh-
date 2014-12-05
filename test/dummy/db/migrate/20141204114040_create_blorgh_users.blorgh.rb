# This migration comes from blorgh (originally 20141204103207)
class CreateBlorghUsers < ActiveRecord::Migration
  def change
    create_table :blorgh_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
