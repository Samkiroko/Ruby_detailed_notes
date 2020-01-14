# frozen_string_literal: true
# from the highest to lowest  precedence table
(.)Method call (e.g. foo.bar)
 [] Bracket Lookup,[]= Bracket Set
 (!) Boolean NOT, (~)complement, (+)unary plus
(**) Exponentiation
(-)Unary minus
 ("*")Multiplication, ("/")division, ("%")modulo
 (+)Addition, (-)subtraction
 (<>) Bitwise shift
(&)Bitwise AND
(|)Bitwise OR (^)Bitwise XOR
(<=> == != === =~ !~)Comparison
(&&)Boolean AND
(||)Boolean OR
(..)Inclusive range, (...)Exclusive range
(? :)Ternary  operator
(rescue)Modifier rescue
( = += -=)Assignments
(defined?) Defined operator
(not)Boolean NOT
(or and) Boolean OR, Boolean AND
(if unless while until) Modifier if, unless, while, until
{} Block with braces
(do end) Block with do end

Unary + and unary - are for +obj , -obj or -(some_expression)
# madifier if , modifier -unless,
a += 1 unless a.zero ?

# operator maybe defined as method
# NB All must start with capital letter
class Foo
	def **(x)
	  puts "Rasing to the power of #{x}"
	end
	def <<y
	  puts "Shifting left by#{y} "
	end
	def !
		puts "Boolean negation"
	end
end

t= Foo.new
t ** 2 #=>"Raising to the power of 2"
t<<3 #=> "shefting left by 3"
!t.new #=> "Boolean negation "

# Bracket lookup have the arguments after the name
class Foo2
	def [](x)
		puts "looking up item #{X}"
	end
	def []=(x,y)
		puts "setting item #{x} to #{y}"
	end
end

f = Foo2.new
f[:cats] = 42 #=> "setting itrm cats to 42"
f[17] #=>"looking up item 17"

# unery plus and unery minus are defined as methods
class Foo1
	def -@
		puts "unary minus"
	end
	def +@
		puts "unary plus"
	end
end
f = Foo1.new
+f #=> "unary plus"
-f #=> "unary minus"


#inequality operator != and non-matching !~ and (!)

class Equa
	def ==(x)
		puts "checking for EQUALITY with #{x}, returning false"
		false
	end
end

 f= Equa.new
 x = (f== 42) #=>"checking for EQUALITY with 42 returning false"
 puts x #=> "false"
 x= (f != 42) #=>" checking for EQUALITY WITH 42, returning false"
 puts x #=> "true"

 class Ineq
	 def !=(x)
		 puts "checking for Inequality with 42"
	 end
 end

 f !=42 #=> "checking for Inquality with 42"

#  CASE EQUALITY OPERATOR (tripple equels)
# checking for relationship
(1..5) ===3 #=> true
(1..5) ===6 #=> false

Integer === 42 #=> true
Integer=== 'fourtytwo'#=>false

/ell/ ==="hello" #=> true
/ell/ === "foobar" #=>false

# class that overrride === (tripple equels) to provide meaning
# --semantics case statements.
array (==)
Date(==)
Module(is_a?)
object(==)
Range(include?)
Ragexp(=~)
string(==)

# NB avoid explicit use of case equality operator

#bad
Integer ===42
(1..5) === 3
/ell/ =~ "Hello"

#good uses synonym method
42.is_a?(Integer)
(1..5).include?(3)
/ell/ =~ "Hello"

# SAFE NAVIGATION OPERATOR
# Ruby 2.3.0 added the safe navigation operator, &. . This operator is intended to shorten the paradigm of object &&
# object.property && object.property.method in conditional statements.
# For example, you have a House object with an address property, and you want to find the street_name from the
# address . To program this safely to avoid nil errors in older Ruby versions, you'd use code something like this:

if house && house.address && house.address.street_name
house.address.street_name
end
# The safe navigation operator shortens this condition. Instead, you can write:
if house&.address&.street_name
house.address.street_name
end

# Caution:
# The safe navigation operator doesn't have exactly the same behavior as the chained conditional. Using the chained
# conditional (first example), the if block would not be executed if, say address was false . The safe navigation
# operator only recognises nil values, but permits values such as false . If address is false , using the SNO will yield
# an error:

 house&.address&.street_name # => undefined method `address' for false:FalseClass

#  ASSIGNMENT OPERATORS
# simple assignment
# =is a simple assignment.it creates a new local variable if the variable was not previously referenced.
x= 3
y =4+5
puts "x is #{x}, y is #{y}" #=> x is 3, y is 9

# parallel assignment
# this is useful especially swapping values

x,y = 3,9
x,y = y,x
puts "x is #{x}, y is #{y}" #=> x is 9 and x is 3

# abbreviated assignment
# itpossible to mix operattors and assignment

x = 1
y = 2
puts "x is #{x}, y is #{y}" #=> x is 1, y is 2

x += y
puts "x is now #{x}" #=> x is now 3

# Various operations can be used in abbreviated assignment:

# Adds and reassigns the variable Example Equivalent to
+= x += y
x = x + y
# -= Subtracts and reassigns the variable x -= y
x = x - y
# *= Multiplies and reassigns the variable x *= y
x = x * y
# /= Divides and reassigns the variable x /= y
x = x / y
# %= Divides, takes the remainder, and reassigns the variable x %= y
x = x % y
# **= Calculates the exponent and reassigns the variable
x **= y x = x ** y

# COMPARISON  OPERATORS
== true if the two values are equal.
!= true if the two values are not equal.
< true if the value of the operand on the left is less than the value on the right.
> true if the value of the operand on the left is greater than the value on the right.
>= true if the value of the operand on the left is greater than or equal to the value on the right.
<= true if the value of the operand on the left is less than or equal to the value on the right.
<=> 0 if the value of the operand on the left is equal to the value on the right,
1 if the value of the operand on the left is greater than the value on the right,
-1 if the value of the operand on the left is less than the value on the right.