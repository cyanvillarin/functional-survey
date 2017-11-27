class FixUserTypeType < ActiveRecord::Migration[5.1]
  def change
  	change_column :surveys, :user_type, :varchar
  end
end
