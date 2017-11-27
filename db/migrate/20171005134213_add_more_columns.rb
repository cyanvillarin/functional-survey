class AddMoreColumns < ActiveRecord::Migration[5.1]
  def change
  	remove_column :surveys, :rating
  end
end
