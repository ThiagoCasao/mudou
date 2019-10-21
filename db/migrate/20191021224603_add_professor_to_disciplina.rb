class AddProfessorToDisciplina < ActiveRecord::Migration[5.2]
  def change
    add_reference :disciplinas, :professor, references: :pessoas, index: true
    add_foreign_key :disciplinas, :pessoas, column: :professor_id
  end
end
