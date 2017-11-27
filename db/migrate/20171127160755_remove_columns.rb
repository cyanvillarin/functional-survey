class RemoveColumns < ActiveRecord::Migration[5.1]
  def change
  	remove_column :surveys, :fr
  	remove_column :surveys, :fp
  	remove_column :surveys, :fo
  	remove_column :surveys, :fs
  	remove_column :surveys, :fc
  	remove_column :surveys, :fm
  	remove_column :surveys, :ft

  	remove_column :surveys, :rp
  	remove_column :surveys, :ro
  	remove_column :surveys, :rs
  	remove_column :surveys, :rc
  	remove_column :surveys, :rm
  	remove_column :surveys, :rt

  	remove_column :surveys, :po
  	remove_column :surveys, :ps
  	remove_column :surveys, :pc
  	remove_column :surveys, :pm
  	remove_column :surveys, :pt

  	remove_column :surveys, :os
  	remove_column :surveys, :oc
  	remove_column :surveys, :om
  	remove_column :surveys, :ot

  	remove_column :surveys, :sc
  	remove_column :surveys, :sm
  	remove_column :surveys, :st

  	remove_column :surveys, :cm
  	remove_column :surveys, :ct

  	remove_column :surveys, :mt

  	remove_column :surveys, :f_weight
  	remove_column :surveys, :r_weight

  	rename_column :surveys, :p_weight, :fcm_fcr
  	rename_column :surveys, :o_weight, :fcm_fa
  	rename_column :surveys, :s_weight, :fcr_fa
  	rename_column :surveys, :c_weight, :fcm_weight
  	rename_column :surveys, :m_weight, :fcr_weight
  	rename_column :surveys, :t_weight, :fa_weight

  end
end
