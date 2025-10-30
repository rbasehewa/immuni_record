class Patient < ApplicationRecord
  has_many :immunisations, dependent: :destroy   # <— cascade
end