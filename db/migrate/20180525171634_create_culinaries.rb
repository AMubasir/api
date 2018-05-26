class CreateCulinaries < ActiveRecord::Migration[5.2]
  def change
    create_table :culinaries do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
