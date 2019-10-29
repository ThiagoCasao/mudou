require 'rails_helper'

RSpec.describe Curso, type: :model do
  context 'Validações gerais:' do
    it { should belong_to(:coordenador).class_name('Pessoa') }
    it { should validate_presence_of(:nome) }
    it { should validate_uniqueness_of(:nome) }
    it { should validate_uniqueness_of(:codigo_mec) }
  end

  # it "se tiver nome, deve ser válido" do
  #   expect(Curso.new(nome: 'Sistemas de informação')).to be_valid
  # end
end
