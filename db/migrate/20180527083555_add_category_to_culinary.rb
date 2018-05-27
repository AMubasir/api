class AddCategoryToCulinary < ActiveRecord::Migration[5.2]
  def change
    add_reference :culinaries, :category, foreign_key: true
  end
end
