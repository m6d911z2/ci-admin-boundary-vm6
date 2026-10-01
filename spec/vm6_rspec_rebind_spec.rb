# frozen_string_literal: true
require_relative 'spec_helper'

RSpec.describe 'VM6 positional quarantine guard' do
  it('harmless known quarantined failure') { expect(1).to eq(2) }
  it('critical protected guard') { expect(1).to eq(1) }
end
