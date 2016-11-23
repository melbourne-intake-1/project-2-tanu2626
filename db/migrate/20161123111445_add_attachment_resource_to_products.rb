class AddAttachmentResourceToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :resource
    end
  end

  def self.down
    remove_attachment :products, :resource
  end
end
