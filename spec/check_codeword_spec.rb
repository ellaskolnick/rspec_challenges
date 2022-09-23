require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns 'Correct! Come in.' if codeword is horse" do
    result = check_codeword("horse")

    expect(result).to eq "Correct! Come in."
  end
end

RSpec.describe "check_codeword method" do
  it "returns 'Close, but nope.' if codeword starts with an'h' and ends with an 'e'" do
    result = check_codeword("house")

    expect(result).to eq "Close, but nope."
  end
end

RSpec.describe "check_codeword method" do
  it "returns 'WRONG!' if codeword is not 'horse' and doesn't start with an 'h' or end with an 'e'" do
    result = check_codeword("bro")

    expect(result).to eq "WRONG!"
  end
end
