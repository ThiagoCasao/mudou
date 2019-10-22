require 'rails_helper'

RSpec.describe Pessoa, type: :model do
  context 'validações gerais' do
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:perfil) }
    it { is_expected.to allow_values('professor', 'coordenador', 'aluno').for(:perfil) }
    it { should define_enum_for(:perfil) }
    # it { should validate_inclusion_of(:perfil) in:[:professor, :coordenador, :aluno])}

  end
end
