FactoryBot.define do
  factory :aula do
    titulo { 'TDD' }
    data { Date.today }
    duracao { 40 }
    objetivo { 'Testar coisas' }
    ata { 'Coisas testadas' }

    association :disciplina, factory: :disciplina
  end
end