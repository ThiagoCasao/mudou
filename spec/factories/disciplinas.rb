FactoryBot.define do
  factory :disciplina do
    nome { 'Eng. SW III' }
    semestre { 4 }

    association :professor, factory: :professor
    association :curso, factory: :curso
  end
end