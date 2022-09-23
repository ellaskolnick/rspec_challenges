require 'gratitudes'

RSpec.describe Gratitudes do
  it "returns that you should be grateful for animals and tea" do
    gratitudes = Gratitudes.new
    gratitudes.add("animals")
    gratitudes.add("tea")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: animals, tea"
  end
end
