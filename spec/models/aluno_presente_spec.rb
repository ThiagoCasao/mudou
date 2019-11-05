require 'rails_helper'

RSpec.describe AlunoPresente, type: :model do

  context 'validações gerais' do
    it { should belong_to(:aula) }
    it { should belong_to(:aluno).class_name('Pessoa') } 
  end

  context 'ao informar aluno' do
    let(:matricula) { FactoryBot.create(:matricula) }
    let(:aula) { FactoryBot.create(:aula, disciplina: matricula.disciplina) }
    let!(:presenca) { FactoryBot.create(:presenca, aula: aula, aluno: matricula.aluno) }
    
    context 'duas vezes na mesma aula' do
      let(:presenca_repetida) { FactoryBot.build(:presenca, aula: aula, aluno: matricula.aluno) } 
      it 'deve validar' do
        expect(presenca_repetida).to_not be_valid
      end
    end

    context 'em aulas diferentes' do
      let(:aula2) { FactoryBot.create(:aula, disciplina: matricula.disciplina) }
      let(:presenca2) { FactoryBot.create(:presenca, aula: aula2, aluno: matricula.aluno) }
      it 'deve permitir' do
        expect(presenca2).to be_valid
      end
    end

  end
end
