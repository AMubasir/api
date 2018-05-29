class CreateNativeLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :native_languages do |t|
      t.string :name
      t.references :category_language, foreign_key: true

      t.timestamps
    end
  end
end
