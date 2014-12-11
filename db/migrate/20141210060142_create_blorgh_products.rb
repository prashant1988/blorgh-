class CreateBlorghProducts < ActiveRecord::Migration
  def change
    create_table :blorgh_products do |t|
      t.string :name
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
