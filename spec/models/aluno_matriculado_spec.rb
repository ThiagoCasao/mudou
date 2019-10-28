require 'rails_helper'

RSpec.describe AlunoMatriculado, type: :model do

  # context 'validações gerais' do
  #   # it { should validate_uniqueness_of(:aluno).scoped_to(:disciplina_id, :ano) }
  # end

  # context 'ao matricular o aluno ' do
  #   let(:coordenador) { Pessoa.new(nome: 'Fábio Taffe', perfil: :coordenador) }
  #   let(:aluno1) { Pessoa.new(nome: 'Joaquim Teixeira', perfil: :aluno) }
  #   let(:curso) { Curso.new(nome: 'Sistemas de Informação', coordenador: coordenador) }
  #   let(:disciplina) { Disciplina.new(curso: curso, nome: 'Engenharia de Software III', semestre: 4) }
  #   let(:matricula) { AlunoMatriculado.new(ano: 2019, disciplina: disciplina, aluno: aluno1) }

  #   context 'duas vezes na mesma disciplina' do
  #     it 'e no mesmo ano, deve bloquear' do
  #       matricula.save
  #       matricula_repetida = AlunoMatriculado.new(ano: 2019, disciplina: disciplina, aluno: aluno1)
  #       expect(matricula_repetida).to_not be_valid
  #     end

  #     it 'e em anos diferentes, deve permitir' do
  #       matricula.save
  #       outra_matricula = AlunoMatriculado.new(ano: 2020, disciplina: disciplina, aluno: aluno1)
  #       expect(outra_matricula).to be_valid
  #     end
  #   end

  #   context 'em duas disciplinas distintas no mesmo ano' do
  #     let(:disciplina2) { Disciplina.new(curso: curso, nome: 'Design de Interação', semestre: 4) }

  #     it 'deve permitir' do
  #       matricula.save
  #       outra_matricula = AlunoMatriculado.new(ano: 2019, disciplina: disciplina2, aluno: aluno1)
  #       expect(outra_matricula).to be_valid
  #     end
  #   end
  # end
end
