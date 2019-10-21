class CreateAlunoMatriculados < ActiveRecord::Migration[5.2]
  def change
    create_table :aluno_matriculados do |t|
      t.belongs_to :disciplina, foreign_key: true
      t.integer :ano

      t.timestamps
    end
  end
end
