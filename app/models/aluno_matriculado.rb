class AlunoMatriculado < ApplicationRecord
  belongs_to :disciplina
  belongs_to :aluno, class_name: 'Pessoa'

  validates :ano, presence: true
  validates :ano, numericality: { only_integer: true,
                                  less_than_or_equal_to: Date.today.year }
                                  
  validates :aluno, uniqueness: { scope: [:disciplina_id, :ano],
                                  message: 'Aluno já está matriculado nesta disciplina para este ano' }

end
