class AddMoreColumnPart3 < ActiveRecord::Migration[5.1]
  def change
  	add_column :surveys, :fp, :integer
  	add_column :surveys, :fo, :integer
  	add_column :surveys, :fs, :integer
  	add_column :surveys, :fc, :integer
  	add_column :surveys, :fm, :integer
  	add_column :surveys, :ft, :integer

  	add_column :surveys, :rp, :integer
  	add_column :surveys, :ro, :integer
  	add_column :surveys, :rs, :integer
  	add_column :surveys, :rc, :integer
  	add_column :surveys, :rm, :integer
  	add_column :surveys, :rt, :integer

  	add_column :surveys, :po, :integer
  	add_column :surveys, :ps, :integer
  	add_column :surveys, :pc, :integer
  	add_column :surveys, :pm, :integer
  	add_column :surveys, :pt, :integer

  	add_column :surveys, :os, :integer
  	add_column :surveys, :oc, :integer
  	add_column :surveys, :om, :integer
  	add_column :surveys, :ot, :integer

  	add_column :surveys, :sc, :integer
  	add_column :surveys, :sm, :integer
  	add_column :surveys, :st, :integer

  	add_column :surveys, :cm, :integer
  	add_column :surveys, :ct, :integer

  	add_column :surveys, :mt, :integer

  	add_column :surveys, :f_weight, :integer
  	add_column :surveys, :r_weight, :integer
  	add_column :surveys, :p_weight, :integer
  	add_column :surveys, :o_weight, :integer
  	add_column :surveys, :s_weight, :integer
  	add_column :surveys, :c_weight, :integer
  	add_column :surveys, :m_weight, :integer
  	add_column :surveys, :t_weight, :integer

  end
end
