require_relative '../lib/guard'

order = File.readlines(File.expand_path('../config/order.txt', __dir__), chomp: true).reject(&:empty?)

RSpec.describe 'guard' do
  order.each do |name|
    it(name) do
      case name
      when 'harmless'
        expect(true).to be(true)
      when 'critical'
        expect(Guard.critical_ok?).to be(true)
      else
        raise "unexpected case: #{name}"
      end
    end
  end
end
