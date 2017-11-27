class AddColumns < ActiveRecord::Migration[5.1]
  def change
  	add_column :surveys, :FR, :integer
  end
end
