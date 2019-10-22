require 'rails_helper'

RSpec.describe Curso, type: :model do
  # it ( should belong_to(:coordenador) )

  context "Validações gerais:" do
    it { should validate_presence_of(:nome) }
  end

  # it "se tiver nome, deve ser válido" do
  #   expect(Curso.new(nome: 'Sistemas de informação')).to be_valid
  # end
end
