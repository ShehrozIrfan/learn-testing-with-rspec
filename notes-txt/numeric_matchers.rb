=begin

*** === EXPECTATIONS === ***

** Numeric Matchers **

Compare numeric values.
We've:
- be == 10
- be < 10 or > 10 or <= 10 or >= 10
- be_between(5, 10).inclusive # including the 5 and 10
- be_between(15-20).exclusive # excluding the 15 and 20
- be_within(1).of(11) # should be in 11
- cover(9) # for range

=end
