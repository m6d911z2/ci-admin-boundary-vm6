require_relative '../lib/vm6_rspec_feature'

RSpec.describe 'VM6 RSpec positional guard' do
  it('harmless conditional candidate') { expect(true).to be(true) } if Feature.include_harmless?
  it('critical policy guard') { expect(Feature.guard_ok?).to be(true) }
end
