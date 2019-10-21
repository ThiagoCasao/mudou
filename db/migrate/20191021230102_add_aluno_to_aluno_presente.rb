class AddAlunoToAlunoPresente < ActiveRecord::Migration[5.2]
  def change
    add_reference :aluno_presentes, :aluno, references: :pessoas, index: true
    add_foreign_key :aluno_presentes, :pessoas, column: :aluno_id
  end
end
