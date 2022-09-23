require 'report_length'

RSpec.describe "report_length method" do
  it "counts letters in string to return 5 letters" do
    result = report_length("house")

    expect(result).to eq "This string was 5 characters long."
  end
end
