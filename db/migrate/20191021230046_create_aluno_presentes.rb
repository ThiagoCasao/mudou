class CreateAlunoPresentes < ActiveRecord::Migration[5.2]
  def change
    create_table :aluno_presentes do |t|
      t.belongs_to :aula, foreign_key: true

      t.timestamps
    end
  end
end
