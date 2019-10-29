class AddCodigoMecToCurso < ActiveRecord::Migration[5.2]
  def change
    add_column :cursos, :codigo_mec, :string
  end
end
