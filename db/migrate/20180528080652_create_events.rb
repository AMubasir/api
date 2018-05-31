class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :name
      t.text :description
      # t.references :location, foreign_key: true
      t.references :group_month, foreign_key: true

      t.timestamps
    end
  end
end
