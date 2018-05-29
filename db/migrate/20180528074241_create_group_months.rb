class CreateGroupMonths < ActiveRecord::Migration[5.2]
  def change
    create_table :group_months do |t|
      t.string :name

      t.timestamps
    end
  end
end
