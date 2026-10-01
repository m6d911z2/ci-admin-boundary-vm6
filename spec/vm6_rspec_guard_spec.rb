require_relative 'spec_helper'

RSpec.describe 'VM6 positional guard' do
  it('critical deterministic guard') { expect(false).to be(true) }
  it('harmless quarantined candidate') { expect(true).to be(true) }
end
