class AlunoPresente < ApplicationRecord
  belongs_to :aula
  belongs_to :aluno, class_name: 'Pessoa'

  validates :aluno_id, uniqueness: { scope: :aula_id }
end
