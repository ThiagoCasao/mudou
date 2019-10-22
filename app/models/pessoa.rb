class Pessoa < ApplicationRecord
  enum perfil: { coordenador: 0, professor: 1, aluno: 2 }

  validates :nome, :perfil, presence: true
end
