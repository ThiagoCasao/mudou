class Disciplina < ApplicationRecord
  belongs_to :curso

  validates :nome, :semestre, presence: true
  validates :semestre, numericality: { greater_than_or_equal_to: 1,
                                       less_than_or_equal_to: 8 }
end
