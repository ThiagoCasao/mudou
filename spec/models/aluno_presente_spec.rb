require 'rails_helper'

RSpec.describe AlunoPresente, type: :model do

  context 'validações gerais' do
    it { should belong_to(:aula) }
    it { should belong_to(:aluno).class_name('Pessoa') } 
  end

  context 'ao informar aluno' do
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
    let(:aula) { Aula.new(disciplina: disciplina,
                          titulo: 'TDD',
                          data: Date.today,
                          duracao: 40,
                          objetivo: 'Testar coisas',
                          ata: 'Coisas testadas') }
    let(:presenca) { AlunoPresente.new(aula: aula, 
                                       aluno: aluno) }
    
    context 'duas vezes na mesma aula' do    
      let(:presenca_repetida) { AlunoPresente.new(aula: aula, 
                                                  aluno: aluno) }
 
      it 'deve validar' do
        presenca.save
        expect(presenca_repetida).to_not be_valid
      end
    end

    context 'em aulas diferentes' do
      let(:aula2) { Aula.new(disciplina: disciplina,
                            titulo: 'TDD',
                            data: Date.today,
                            duracao: 40,
                            objetivo: 'Testar coisas',
                            ata: 'Coisas testadas') }      
      let(:presenca2) { AlunoPresente.new(aula: aula2, 
                                          aluno: aluno) }

      it 'deve permitir' do
        presenca.save
        expect(presenca2).to be_valid
      end
    end

  end
end
