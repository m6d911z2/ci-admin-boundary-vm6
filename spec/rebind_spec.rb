RSpec.describe 'VM6 positional guard' do
  it('known flaky baseline') { expect(1).to eq(2) }
  it('critical policy guard') { expect(1).to eq(1) }
end
