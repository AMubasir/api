class AddAddressLatitudeLongitudeToCulinary < ActiveRecord::Migration[5.2]
  def change
    add_column :culinaries, :address, :string
    add_column :culinaries, :latitude, :float
    add_column :culinaries, :longitude, :float

    add_column :crafts, :address, :string
    add_column :crafts, :latitude, :float
    add_column :crafts, :longitude, :float

    add_column :events, :address, :string
    add_column :events, :latitude, :float
    add_column :events, :longitude, :float
  end
end
