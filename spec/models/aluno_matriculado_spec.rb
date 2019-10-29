require 'rails_helper'

RSpec.describe AlunoMatriculado, type: :model do

  context 'validações gerais' do
    it { should belong_to(:disciplina) } 
    it { should belong_to(:aluno).class_name('Pessoa') } 
    it { should validate_presence_of(:ano) }
  end

  context 'ao matricular o aluno ' do
    let(:aluno) { Pessoa.new(perfil: :aluno, 
                             nome: 'Tião Macalé') }
    let(:professor) { Pessoa.new(perfil: :professor, 
                                 nome: 'Joaquim Teixeira') }
    let(:coordenador) { Pessoa.new(perfil: :coordenador, 
                                   nome: 'Fábio Taffe') }

    let(:curso) { Curso.new(nome: 'Sistemas de Informação', 
                            coordenador: coordenador) }
    let(:disciplina) { Disciplina.new(curso: curso, 
                                      nome: 'Eng. SW III',
                                      professor: professor, 
                                      semestre: 4) }
    let(:matricula) { AlunoMatriculado.new(ano: 2019, 
                                           disciplina: disciplina, 
                                           aluno: aluno) }

    context 'duas vezes na mesma disciplina' do
      let(:matricula_repetida) { AlunoMatriculado.new(ano: 2019, 
                                                      disciplina: disciplina, 
                                                      aluno: aluno) }

      it 'e no mesmo ano, deve bloquear' do
        matricula.save
        expect(matricula_repetida).to_not be_valid
      end

      it 'e em anos diferentes, deve permitir' do
        matricula.save
        matricula_repetida.ano = 2020
        expect(matricula_repetida).to be_valid
      end
    end

    context 'em duas disciplinas distintas no mesmo ano' do
      let(:disciplina2) { Disciplina.new(curso: curso, 
                                         nome: 'Design de Interação',
                                         professor: professor, 
                                         semestre: 5) }
      let(:matricula2) { AlunoMatriculado.new(ano: 2019, 
                                              disciplina: disciplina2, 
                                              aluno: aluno) }
      it 'deve permitir' do
        matricula.save
        expect(matricula2).to be_valid
      end
    end
  end
end
