describe "Expectation Matchers" do

  describe "Equivalence Matchers" do
    it "will match loosy equality with #eq" do
      a = "Some string"
      b = "Some string"
      expect(a).to eq(b)
      expect(a).to be == b # synonym for eq

      c = 1
      d = 1.0
      expect(c).to eq(d)
    end

    it "will match value equality with #eql" do
      a = "Some string here"
      b = "Some string here"
      expect(a).to eql(b)

      c = 1
      d = 1.0
      expect(c).not_to eql(d)
    end

    it "will match identity equality with #equal" do
      a = "Some string"
      b = "Some string"

      expect(a).not_to equal(b) # same value but different object

      c = b
      expect(b).to equal(c) # same object
      expect(b).to be(c) # synonym for #equal
    end
  end

end
