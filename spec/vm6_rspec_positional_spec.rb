RSpec.describe 'VM6 positional quarantine guard' do
  before(:each) do |example|
    puts "VM6_RSPEC_ID=#{example.id} DESC=#{example.description}"
  end

  it('harmless quarantined baseline') { expect(1).to eq(1) }
  it('critical deterministic gate') { expect(1).to eq(1) }
end
