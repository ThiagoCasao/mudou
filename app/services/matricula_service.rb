class MatriculaService

  def initialize(disciplina, aluno, ano)
    @disciplina = disciplina
    @aluno = aluno
    @ano = ano
  end

  def matricular
    raise StandardError, 'Aluno já matriculado nesta disciplina para este ano' if ja_matriculado?

    matricula = AlunoMatriculado.new(disciplina: @disciplina, aluno: @aluno, ano: @ano)
    matricula.save
    matricula
  end

  def ja_matriculado?
    !AlunoMatriculado.where(disciplina: @disciplina,
                            aluno: @aluno,
                            ano: @ano).empty?
  end

end