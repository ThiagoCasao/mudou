require 'rails_helper'

RSpec.describe PresencaService, type: :model do

  context 'Ao processar ' do
    let(:aula) { FactoryBot.create(:aula) }
    let(:aluno) { FactoryBot.create(:aluno) }
    let(:presenca_service) { PresencaService.processar(aluno, aula) }
    
    it 'deve criar uma instância de AlunoPresente' do
      expect(presenca_service).to be_an_instance_of(AlunoPresente)
    end

    it 'deve criar uma presença para o aluno' do
      expect(presenca_service.aluno).to eq(aluno)
    end

    it 'deve criar uma presença para a aula' do
      expect(presenca_service.aula).to eq(aula)
    end

    it 'deve salvar a presenca' do
      expect(presenca_service.persisted?).to be true
    end
  end

end