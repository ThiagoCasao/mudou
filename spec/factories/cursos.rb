FactoryBot.define do
  factory :curso do
    nome { 'Sistemas de informação' }
    association :coordenador, factory: :coordenador
  end
end