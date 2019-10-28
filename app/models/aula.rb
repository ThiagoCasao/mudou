class Aula < ApplicationRecord
  belongs_to :disciplina

  validates :ata, :objetivo, :data, :titulo, :duracao, presence: true
  validates :duracao, numericality: { only_integer: true,
                                      greater_than_or_equal_to: 40 }
end
