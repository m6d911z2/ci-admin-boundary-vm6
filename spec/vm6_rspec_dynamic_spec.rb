# frozen_string_literal: true
require_relative 'spec_helper'
require_relative '../lib/vm6_cases'

RSpec.describe 'VM6 dynamic registry guard' do
  VM6Cases::CASES.each do |name, safe|
    it("checks #{name}") { expect(safe).to be(true) }
  end
end
