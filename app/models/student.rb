class Student < ApplicationRecord
  belongs_to :e_class
  # has_many :subjects, through :sub_classes
end
