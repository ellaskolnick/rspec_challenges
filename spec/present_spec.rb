require 'present'

RSpec.describe Present do
  it "wraps and unwraps content" do
    present = Present.new
    present.wrap("flower")
    result = present.unwrap
    expect(result).to eq "flower"
  end

  context "when contents is not nil and you try to wrap" do
    it "fails" do
      present = Present.new
      present.wrap("flower")
      expect { present.wrap("banana") }.to raise_error "A contents has already been wrapped."
    end
  end

  context "when contents is nil and you try to unwrap" do
    it "fails" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end
end

# RSpec.describe Present do
#   context "when contents is nil and you try to unwrap" do
#     it "fails" do
#       present = Present.new
#       expect { present.unwrap }.to raise_error "No contents have been wrapped."
#     end
#   end
# end
