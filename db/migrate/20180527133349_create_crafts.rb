class CreateCrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :crafts do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
