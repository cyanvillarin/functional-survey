class ConvertToColumnsToFloat < ActiveRecord::Migration[5.1]
  def change
  	change_column :surveys, :fr, :float
  	change_column :surveys, :fp, :float
  	change_column :surveys, :fo, :float
  	change_column :surveys, :fs, :float
  	change_column :surveys, :fc, :float
  	change_column :surveys, :fm, :float
  	change_column :surveys, :ft, :float

  	change_column :surveys, :rp, :float
  	change_column :surveys, :ro, :float
  	change_column :surveys, :rs, :float
  	change_column :surveys, :rc, :float
  	change_column :surveys, :rm, :float
  	change_column :surveys, :rt, :float

  	change_column :surveys, :po, :float
  	change_column :surveys, :ps, :float
  	change_column :surveys, :pc, :float
  	change_column :surveys, :pm, :float
  	change_column :surveys, :pt, :float

  	change_column :surveys, :os, :float
  	change_column :surveys, :oc, :float
  	change_column :surveys, :om, :float
  	change_column :surveys, :ot, :float

  	change_column :surveys, :sc, :float
  	change_column :surveys, :sm, :float
  	change_column :surveys, :st, :float

  	change_column :surveys, :cm, :float
  	change_column :surveys, :ct, :float

  	change_column :surveys, :mt, :float
  end
end
