class PresencaService

  def self.processar(aluno, aula)
    new(aluno, aula).processar
  end

  def initialize(aluno, aula)
    @aluno = aluno
    @aula = aula
  end 

  def processar
    AlunoPresente.create(aluno: @aluno, aula: @aula)
  end

end