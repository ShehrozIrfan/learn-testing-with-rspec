describe "Expectation Matchers" do

  xdescribe "Equivalence Matchers" do
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

  xdescribe "Truthiness Matchers" do
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

  xdescribe "Numeric Matchers" do
    it "will match less than or greater than" do
      expect(10).to be == 10
      expect(10).to be > 9
      expect(10).to be < 11
      expect(10).to be >= 10
      expect(10).to be <= 10
    end

    it "will match numeric ranges" do
      expect(10).to be_between(5, 10).inclusive
      expect(10).not_to be_between(5, 10).exclusive
      expect(5..10).to cover(9)
      expect(10).to be_within(1).of(11)
    end
  end

  xdescribe "Collection Matchers" do
    it "will match the array" do
      arr = [1,2,3]
      expect(arr).to include(2)
      expect(arr).to include(1,3)

      expect(arr).to start_with(1)
      expect(arr).to end_with(3)

      expect(arr).to match_array([3,2,1]) #order doesn't matter
      expect(arr).not_to match_array([1,2])

      expect(arr).to contain_exactly(3,2,1) #the array must contain these three elements and nothnig
      expect(arr).not_to contain_exactly(1,2)
    end

    it "will match the string" do
      string = "Lynda"

      expect(string).to include("Ly")
      expect(string).to include("da", "Ly")

      expect(string).to start_with("Lyn")
      expect(string).to end_with("a")
    end

    it "will match the hash" do
      hash = {
        a: 1,
        b: 2,
        c: 3
      }

      expect(hash).to include(:a) #checks for include the key 'a'
      expect(hash).to include(a: 1)

      expect(hash).to include(a: 1, c: 3)
      expect(hash).to include({a: 1, c: 3})

      # the below test is passing in video tutorial, but in my case it is failing.
      #expect(hash).not_to include({'a': 1, 'b': 2}) # when the key is string, then it is not necessary to match the key in hash.
    end
  end

  describe "Other Useful Matchers" do
    it "will match string with a regex" do
      string = "This is some dummy string"
      expect(string).to match(/is(.+)string/) #it should return true, if the "is" and "string" is somewhere in the string

      expect('123').to match(/\d{3}/)
      expect(123).not_to match(/\d{3}/) #to match with a regex it must be a string

      email = "shehrozirfan89@gmail.com"
      expect(email).to match(/\A\w+@\w+\.\w{3}\Z/)
    end

    it "will match object type" do
      expect('hello').to be_instance_of(String)
      expect('hello').to be_an_instance_of(String) #alias of be instance of

      #the d/bw instance_of and kind_of is that, instance_of is true when an object is of the same class, but for kind of it can be hierarchical. Might be a child class etc.
      expect('hello').to be_kind_of(String)
      expect('hello').to be_a_kind_of(String) #alias of be kind of

      expect('test').to be_a(String)
      expect([1,2,3]).to be_an(Array)
    end

    it "will match objects with #respond_to" do
      string = "hello"
      expect(string).to respond_to(:length)
      expect(string).not_to respond_to(:sort)
    end

    it "will match class attributes with #has_attributes" do

      class Car
        attr_accessor :make, :year, :color
      end

      car = Car.new
      car.make = "Honda"
      car.year = 2022
      car.color = "white"

      expect(car).to have_attributes(color: 'white')
      expect(car).to have_attributes(year: 2022, color: "white", make: "Honda")
    end

    it "will match anything with #satisfy" do
      #it is the most flexible matcher
      expect(10).to satisfy do |val|
        (val > 5) && (val <= 10) && (val % 2 == 0)
      end
    end
  end

end
