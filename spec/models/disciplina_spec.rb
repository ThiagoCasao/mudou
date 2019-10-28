require 'rails_helper'

RSpec.describe Disciplina, type: :model do
  context 'validações gerais' do
    it { should belong_to(:curso) }
    it { should belong_to(:professor).class_name('Pessoa') }
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:semestre) }
    it { should validate_numericality_of(:semestre).is_greater_than_or_equal_to(1).is_less_than_or_equal_to(8) }

  end
end
