require "./lib/caesar"

RSpec.describe "caesar_cipher" do
  it "shifts all letters up by 1" do
    expect(caesar_cipher("abcdE", 1)).to eq("bcdeF")
  end

  it "shifts all letters down by 2" do
    expect(caesar_cipher("fgH", -2)).to eq("deF")
  end
end
