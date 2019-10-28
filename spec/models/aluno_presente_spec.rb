require 'rails_helper'

RSpec.describe AlunoPresente, type: :model do

  context 'validações gerais' do
    it { should belong_to(:aula) }
    it { should belong_to(:aluno).class_name('Pessoa') } 
  end

  context 'ao informar mesmo aluno em mesma aula' do
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
    let(:presenca_repetida) { AlunoPresente.new(aula: aula, 
                                                aluno: aluno) }
 
    it 'deve validar que não pode repetir aluno' do
      presenca.save
      expect(presenca_repetida).to_not be_valid
    end

  end
end
