# This migration comes from blorgh (originally 20141210074322)
class AddAttachmentAvatarToProducts < ActiveRecord::Migration
  def self.up
    change_table :blorgh_products do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :blorgh_products, :avatar
  end
end
