class CreateCategoryLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :category_languages do |t|
      t.string :name

      t.timestamps
    end
  end
end
