class AddAvatarToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :avatar, :string
  end
end
