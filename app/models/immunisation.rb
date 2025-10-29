class Immunisation < ApplicationRecord
  belongs_to :patient
  belongs_to :vaccine
end
