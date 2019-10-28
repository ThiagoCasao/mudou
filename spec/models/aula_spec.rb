require 'rails_helper'

RSpec.describe Aula, type: :model do

  context 'validações gerais' do
    it { should belong_to(:disciplina) }
  end

end
