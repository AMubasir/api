class RemoveLocationFromCraft < ActiveRecord::Migration[5.2]
  def change
    remove_reference :crafts, :location, foreign_key: true
  end
end
