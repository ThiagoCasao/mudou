class AlunoMatriculado < ApplicationRecord
  belongs_to :disciplina
  belongs_to :aluno
end
