class Cardfish < ApplicationRecord
  has_and_belongs_to_many :diseases
end
