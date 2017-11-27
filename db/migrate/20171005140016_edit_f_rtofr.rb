class EditFRtofr < ActiveRecord::Migration[5.1]
	def change
  		rename_column :surveys, :FR, :fr
  	end
end
