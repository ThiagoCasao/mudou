require 'rails_helper'

RSpec.describe Aula, type: :model do

  context 'validações gerais' do
    it { should belong_to(:disciplina) }

    it { should validate_presence_of(:ata) }
    it { should validate_presence_of(:data) }
    it { should validate_presence_of(:objetivo) }
    it { should validate_presence_of(:titulo) }
    it { should validate_presence_of(:duracao) }
    it { should validate_numericality_of(:duracao).only_integer.is_greater_than_or_equal_to(40) }
  end

end
