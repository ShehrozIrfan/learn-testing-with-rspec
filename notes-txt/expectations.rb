=begin

*** === EXPECTATIONS === ***

** Fundamentals **

* In general one expectation per example.
* With more than one expectation in an example, you will only see first failure.
Lets say you've 10 expectations in an example, so if the first expectations fails then the other nine won't run and you don't able to get to them. So, to solve this you need to write 10 expectations in 10 examples. But there are some cases we need to write more than one expectation per example. But we need to try to keep them as less as possible.

* To understand expect, consider the example of English 'infinitive', it is something that always starts with 'to' and expects a 'verb' like To dance, To bowl etc.
So, expect is like this:
expect(actual).to match(expected)

the above statement is same as:
expect(actual).to(match(expected)) # we ommit the round brackets in ruby

expect(@name).to eq('Shehroz') // equal
expect(@name).to match(/K.v.n/) // match with regular expression
expect(@visible).to be(true) //boolean
@expect(@numbers).to match_array([4,5,2,8]) //match with array

=end
