class DropLocation < ActiveRecord::Migration[5.2]
  def change
    # remove_reference :culinaries, :location, foreign_key: true
    # remove_reference :events, :location, foreign_key: true

    # drop_table :locations
  end
end
