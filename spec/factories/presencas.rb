FactoryBot.define do
  factory :presenca, class: 'AlunoPresente' do
    association :aluno, factory: :aluno
    association :aula, factory: :aula
  end
end