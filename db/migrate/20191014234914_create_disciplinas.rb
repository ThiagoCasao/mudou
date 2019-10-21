class CreateDisciplinas < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.belongs_to :curso, foreign_key: true
      t.integer :semestre

      t.timestamps
    end
  end
end
