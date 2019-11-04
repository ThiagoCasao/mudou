FactoryBot.define do
  factory :matricula, class: 'AlunoMatriculado' do
    ano { 2019 }

    association :aluno, factory: :aluno
    association :disciplina, factory: :disciplina
  end
end