class AlunoMatriculado < ApplicationRecord
  belongs_to :disciplina
  belongs_to :aluno, class_name: 'Pessoa'

  validates :ano, presence: true
  validates :aluno, uniqueness: { scope: [:disciplina_id, :ano],
                                  message: 'Aluno já está matriculado nesta disciplina para este ano' }

end
