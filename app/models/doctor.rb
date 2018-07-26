class Doctor < ApplicationRecord
    belongs_to :city
    has_many :patients, through: :appointments
    has_and_belongs_to_many :doctors
end
