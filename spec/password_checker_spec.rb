require 'password_checker'

RSpec.describe PasswordChecker do
  context "when password is valid" do
    it "return true" do
      password_checker = PasswordChecker.new
      expect(password_checker.check("12345678")).to eq true
    end
  end

  context "when password is invalid" do
    it "fails" do
      password_checker = PasswordChecker.new
      expect{ password_checker.check("12") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end
