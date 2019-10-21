class AddAlunoToAlunoMatriculado < ActiveRecord::Migration[5.2]
  def change
    add_reference :aluno_matriculados, :aluno, references: :pessoas, index: true
    add_foreign_key :aluno_matriculados, :pessoas, column: :aluno_id
  end
end
