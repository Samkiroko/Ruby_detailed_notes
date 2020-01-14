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
