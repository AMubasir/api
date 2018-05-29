class ChangeColumnLanguage < ActiveRecord::Migration[5.2]
  def change
    rename_column :native_languages, :name, :us
    add_column :native_languages, :indonesia, :string
    add_column :native_languages, :javanese, :string
  end
end