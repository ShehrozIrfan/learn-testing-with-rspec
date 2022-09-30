=begin

*** === EXPECTATIONS === ***

** Equivalence Matchers **

There are three types of equivalence matchers:

x = 1

1. expect(x).to eq(1) # x == 1  - most common, doesn't check the type.
   expect(x).to be == 1 # x == 1

2. expect(x).to eql(1) # x.eql?(1) - checks the type as well.

3. expect(x).to equal(1) # x.equal?(1), rare, compare the object id
   expect(x).to be(1) # x.equal?(1)
=end
