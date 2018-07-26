class City < ApplicationRecord
    has_many :patients
    has_many :doctor
    has_many :appointments
end
