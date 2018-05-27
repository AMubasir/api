class AddLocationToCulinaries < ActiveRecord::Migration[5.2]
  def change
    add_reference :culinaries, :location, foreign_key: true
  end
end
