RSpec.describe 'VM6 positional quarantine guard' do
  it('critical deterministic failure') { expect(1).to eq(2) }
  it('harmless quarantined candidate') { expect(true).to be(true) }
end
