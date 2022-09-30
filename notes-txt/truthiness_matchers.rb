=begin

*** === EXPECTATIONS === ***

** Truthiness Matchers **

Matchers that returns whether something is true or not.

We've:
- expect(1 < 2).to be(true) # same as expect(1 < 2).to be true
- expect(1 > 2).to be(false) # same as expect(1 > 2).to be false
- expect("some string").to be_truthy
- expect(nil).to be_falsey
- expect(nil).to be_nil

=end
