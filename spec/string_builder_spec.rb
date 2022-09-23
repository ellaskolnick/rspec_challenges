require 'string_builder'

RSpec.describe StringBuilder do
  it "returns the length of the string as 12" do
    string_builder = StringBuilder.new
    string_builder.add("Hi, I'm Bob!")
    result = string_builder.size
    expect(result).to eq 12
  end
end

RSpec.describe StringBuilder do
  it "returns string 'I LOVE cheese!'" do
    string_builder = StringBuilder.new
    string_builder.add("I LOVE cheese!")
    result = string_builder.output
    expect(result).to eq "I LOVE cheese!"
  end
end
