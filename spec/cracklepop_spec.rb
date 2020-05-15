## Write a program that prints out the numbers 1 to 100 (inclusive). If the number is divisible by 3, print Crackle instead of the number. If it's divisible by 5, print Pop. If it's divisible by both 3 and 5, print CracklePop. You can use any language.

require '../cracklepop'

describe "#cracklepop" do
  # let(:output) {  }
  let(:array_of_outputs) { capture_stdout { cracklepop(1,100) }.split("\n") }
  
  it "should print out 100 lines" do
    expect(array_of_outputs.size).to eq(100)
  end
  
  it "starts with 1" do 
    expect(array_of_outputs[0]).to eq("1")
  end

  it "ends with 'Pop'" do
    expect(array_of_outputs[-1]).to eq("Pop")
  end

  it "contains at least one 'Crackle'" do
    expect(array_of_outputs).to include("Crackle")
  end

  context "divisibility checks" do
    it "shows Crackle if divisible by 3" do
      expect(array_of_outputs[11]).to eq("Crackle")
      expect(array_of_outputs[35]).to eq("Crackle")
    end

    it "shows Pop if divisible by 5" do
      expect(array_of_outputs[24]).to eq("Pop")
      expect(array_of_outputs[64]).to eq("Pop")
    end

    it "shows CracklePop if divisible by 3 and 5" do
      expect(array_of_outputs[14]).to eq("CracklePop")
      expect(array_of_outputs[74]).to eq("CracklePop")
    end
  end
end