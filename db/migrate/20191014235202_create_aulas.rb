class CreateAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :aulas do |t|
      t.belongs_to :disciplina, foreign_key: true
      t.date :data
      t.integer :duracao
      t.string :titulo
      t.text :objetivo
      t.text :ata

      t.timestamps
    end
  end
end
