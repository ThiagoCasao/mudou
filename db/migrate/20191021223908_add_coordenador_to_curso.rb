class AddCoordenadorToCurso < ActiveRecord::Migration[5.2]
  def change
    add_reference :cursos, :coordenador, references: :pessoas, index: true
    add_foreign_key :cursos, :pessoas, column: :coordenador_id
  end
end
