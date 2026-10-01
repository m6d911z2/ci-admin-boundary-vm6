RSpec.describe 'VM6 RSpec positional guard' do
  it('harmless quarantined candidate') { expect(true).to be(true) }
  it('critical guard stays SAFE') { expect(File.read('vm6-rspec-guard.txt').strip).to eq('SAFE') }
end
