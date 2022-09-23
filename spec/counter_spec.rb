require 'counter'

RSpec.describe Counter do
  it "counts to 4" do
    counter = Counter.new
    counter.add(4)
    result = counter.report
    expect(result).to eq "Counted to 4 so far."
  end
end
