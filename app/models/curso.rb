class Curso < ApplicationRecord
  belongs_to :coordenador, class_name: 'Pessoa'
  validates :nome, presence: true
  validates :nome, :codigo_mec, uniqueness: true
end
