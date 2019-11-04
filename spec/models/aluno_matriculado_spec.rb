require 'rails_helper'

RSpec.describe AlunoMatriculado, type: :model do

  context 'validações gerais' do
    it { should belong_to(:disciplina) }
    it { should belong_to(:aluno).class_name('Pessoa') } 
    it { should validate_presence_of(:ano) }
    it { should validate_numericality_of(:ano).only_integer.is_less_than_or_equal_to(Date.today.year) }
  end

  context 'ao matricular o aluno ' do
    let(:matricula) { FactoryBot.create(:matricula) }

    context 'duas vezes na mesma disciplina' do
      let(:matricula_repetida) { FactoryBot.build(:matricula,
                                                  disciplina: matricula.disciplina,
                                                  aluno: matricula.aluno) }

      it 'e no mesmo ano, deve bloquear' do
        expect(matricula_repetida).to_not be_valid
      end

      it 'e em anos diferentes, deve permitir' do
        matricula_repetida.ano = 2018
        expect(matricula_repetida).to be_valid
      end
    end

    context 'em duas disciplinas distintas no mesmo ano' do
      let(:matricula2) { FactoryBot.build(:matricula) }
      it 'deve permitir' do
        expect(matricula2).to be_valid
      end
    end
  end
end
