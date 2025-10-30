class Vaccine < ApplicationRecord
  has_many :immunisations, dependent: :destroy
end