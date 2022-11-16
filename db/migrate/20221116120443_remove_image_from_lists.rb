class RemoveImageFromLists < ActiveRecord::Migration[7.0]
  def change
    remove_column :lists, :image, :string
  end
end
