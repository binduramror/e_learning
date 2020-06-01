class EClass < ApplicationRecord
	has_many :sub_classes
	has_many :subjects, through: :sub_classes
	has_many :students
end
