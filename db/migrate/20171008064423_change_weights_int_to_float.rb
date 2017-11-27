class ChangeWeightsIntToFloat < ActiveRecord::Migration[5.1]
  def change
  	change_column :surveys, :f_weight, :float
  	change_column :surveys, :r_weight, :float
  	change_column :surveys, :p_weight, :float
  	change_column :surveys, :o_weight, :float
  	change_column :surveys, :s_weight, :float
  	change_column :surveys, :c_weight, :float
  	change_column :surveys, :m_weight, :float
  	change_column :surveys, :t_weight, :float
  end
end
