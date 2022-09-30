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

  describe "Truthiness Matchers" do
    it "will match true/false" do
      expect(1 < 2).to be(true) # do not use be_true
      expect(1 > 2).to be(false) # do not use be_false
      expect(nil).to be_nil
      expect(nil).not_to be(false) # nil is not exactly false
      expect("foobar").not_to be(true) # string is not exactly true
      expect(0).not_to be (false)  # 0 is not exactly false
    end

    it "will match truthy/falsy" do
      expect(1 < 2).to be_truthy
      expect(1 > 2).to be_falsey
      expect(nil).to be_falsey # nil counts as false
      expect("foo").to be_truthy # any value counts as true
      expect(0).not_to be_falsey # but 0 is still not falsey enough
    end

    it "will match nil" do
      expect(nil).to be_nil
      expect(nil).to be(nil)
      expect(0).not_to be_nil
      expect(false).not_to be_nil
    end
  end
end
