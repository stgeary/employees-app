class Employee < ApplicationRecord
    validates :first_name, presence: true
    belongs_to :department
end
