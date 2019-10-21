class Curso < ApplicationRecord
  validates :nome, presence: true
end
