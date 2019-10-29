# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_29_235106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aluno_matriculados", force: :cascade do |t|
    t.bigint "disciplina_id"
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "aluno_id"
    t.index ["aluno_id"], name: "index_aluno_matriculados_on_aluno_id"
    t.index ["disciplina_id"], name: "index_aluno_matriculados_on_disciplina_id"
  end

  create_table "aluno_presentes", force: :cascade do |t|
    t.bigint "aula_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "aluno_id"
    t.index ["aluno_id"], name: "index_aluno_presentes_on_aluno_id"
    t.index ["aula_id"], name: "index_aluno_presentes_on_aula_id"
  end

  create_table "aulas", force: :cascade do |t|
    t.bigint "disciplina_id"
    t.date "data"
    t.integer "duracao"
    t.string "titulo"
    t.text "objetivo"
    t.text "ata"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_aulas_on_disciplina_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "coordenador_id"
    t.string "codigo_mec"
    t.index ["coordenador_id"], name: "index_cursos_on_coordenador_id"
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "nome"
    t.bigint "curso_id"
    t.integer "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "professor_id"
    t.index ["curso_id"], name: "index_disciplinas_on_curso_id"
    t.index ["professor_id"], name: "index_disciplinas_on_professor_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.integer "perfil"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "aluno_matriculados", "disciplinas"
  add_foreign_key "aluno_matriculados", "pessoas", column: "aluno_id"
  add_foreign_key "aluno_presentes", "aulas"
  add_foreign_key "aluno_presentes", "pessoas", column: "aluno_id"
  add_foreign_key "aulas", "disciplinas"
  add_foreign_key "cursos", "pessoas", column: "coordenador_id"
  add_foreign_key "disciplinas", "cursos"
  add_foreign_key "disciplinas", "pessoas", column: "professor_id"
end
