#Palindrome#

I created a module and included them in the String and Fixnum classes.  You can call palindrome? on an instance of String or Fixnum.

load up a repl (pry/irb)
```ruby
> require './lib/palindrome'
=> true 

> 'racecar'.palindrome?
=> true

> 321.palindrome?
=> false
```
