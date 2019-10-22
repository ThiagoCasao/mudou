class Curso < ApplicationRecord
  belongs_to :coordenador
  validates :nome, presence: true
end
