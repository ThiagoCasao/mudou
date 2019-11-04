FactoryBot.define do
  factory :professor, class: 'Pessoa' do
    perfil { :professor }
    nome { 'Roberto' }
  end

  factory :coordenador, class: 'Pessoa' do
    perfil { :coordenador }
    nome { 'Fábio' }
  end
end