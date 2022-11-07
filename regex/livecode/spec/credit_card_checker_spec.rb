# We are going to do our tests with the RSPEC gem

require_relative "../credit_card_checker"

describe "#credit_card_checker" do
  it "should be invalid if an empty string is passed" do
    expected = false
    actual = credit_card_checker("")

    expect(actual).to eq(expected)
  end

  it "should be invalid if any non-numerical chars are passed" do
    expected = false
    actual = credit_card_checker("4242-4242-4242-4242")

    expect(actual).to eq(expected)
  end

  it "should be a valid VISA card, if 16 digits are passed with no whitespaces and starts with a 4" do
    expected = "Visa"
    actual = credit_card_checker("4242424242424242")

    expect(actual).to eq(expected)
  end

  it "should be valid VISA card if 16 digits are passed with many whitespaces and starts with a 4" do
    expected = "Visa"
    actual = credit_card_checker("4242 4242 424 242 42")

    expect(actual).to eq(expected)
  end

  it "should be valid MASTERCARD card if 16 digits are passed with many whitespaces and starts with a 5" do
    expected = "MasterCard"
    actual = credit_card_checker("5242 4242 424 242 42")

    expect(actual).to eq(expected)
  end
end
