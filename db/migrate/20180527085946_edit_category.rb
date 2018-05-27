class EditCategory < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :culinary
    remove_column :categories, :language
    add_column :categories, :name, :string
  end
end
