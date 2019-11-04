FactoryBot.define do
  factory :aluno, class: 'Pessoa' do
    perfil { :aluno }
    nome { 'Eduardo' }
  end

  factory :outro_aluno, class: 'Pessoa' do
    perfil { :aluno }
    nome { 'Joana' }
  end

end