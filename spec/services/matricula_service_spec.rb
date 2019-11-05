require 'rails_helper'

RSpec.describe MatriculaService, type: :model do

  context 'Ao matricular' do
    let(:disciplina) { FactoryBot.create(:disciplina) }
    let(:aluno) { FactoryBot.create(:aluno) }
    let(:ano) { 2019 }

    context 'um aluno que não foi matriculado ainda' do
      it 'deve criar uma matrícula nova' do
        expect(MatriculaService.new(disciplina, aluno, ano).matricular).to be_an_instance_of(AlunoMatriculado)
      end

      it 'deve salvar a nova matrícula' do
        matricula = MatriculaService.new(disciplina, aluno, ano).matricular
        expect(matricula).to be_persisted
      end
    end

    context 'um aluno já matriculado' do
      let!(:matricula) { FactoryBot.create(:matricula, 
                                           ano: ano, 
                                           aluno: aluno, 
                                           disciplina: disciplina) }

      it 'Deve validar' do
        expect {
          MatriculaService.new(disciplina, aluno, ano).matricular
        }.to raise_error(an_instance_of(StandardError).and having_attributes(message: 'Aluno já matriculado nesta disciplina para este ano'))



        #ms = MatriculaService.new(disciplina, aluno, ano)
        #expect(MatriculaService).to receive(:verificar_matricula_existente).once.and_call_original
        #ms.matricular
      end
    end 
  end
end
