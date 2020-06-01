class Subject < ApplicationRecord
	has_many :sub_classes
	has_many :subjects, through: :sub_classes
end
