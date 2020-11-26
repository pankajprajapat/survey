class Observe < ApplicationRecord
  has_many :questions, dependent: :destroy
end
