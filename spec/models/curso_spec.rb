require 'rails_helper'

RSpec.describe Curso, type: :model do
  describe 'atributos' do
    it { should validate_presence_of(:nome) }
    it ( should belong_to(:coordenador) )
  end
  it "se tiver nome, deve ser válido" do
    expect(Curso.new(nome: 'Sistemas de informação')).to be_valid
  end
end
