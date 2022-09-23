require 'greet'

RSpec.describe "greet method" do
  it "Greets Bob" do
    result = greet("Bob")
    expect(result).to eq "Hello, Bob!"
  end
end
