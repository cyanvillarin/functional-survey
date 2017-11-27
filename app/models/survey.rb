class Survey < ApplicationRecord
	serialize :rating, Array

	validates :name, presence: true

	validates :fcm_fcr, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :fcm_fcr, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

	validates :fcm_fa, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :fcm_fa, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

	validates :fcr_fa, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :fcr_fa, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

end











