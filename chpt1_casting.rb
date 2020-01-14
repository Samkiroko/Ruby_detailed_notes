# frozen_string_literal: true

# casting or type conversion
# casting to a float
'123.50'.to_f
Float('123.50')
# when string is not a valid Float:
'something'.to_f # => 0.0
Float('something') # ArgumentError

# SECTION 2.2 CASTING TO STRING
123.5.to_s #=> "123.5"
string(123.5) #=> "123.5"
# note string() will just call #to_s
# method karnel#sprintf and string#%behave similar to c "programming"
format('%s', 123.5) #=> "123.5"
format('%s', 123.5) #=> "123.5"
format('%d', 123.5) #=> "123"
format('%.2f', 123.5) #=> "123.50"

# CASTING TO AN INTEGER
'123-foo'.to_i #=> 123
'foo-123'.to_i #=> 123
# a string will take  the value of any integer at its start,NB will not take
# -form anywhere else
# diff when the string is not a valid integer
'something'.to_i #=> 0
Integer('something') # ArgumentError

# FLOATS AND INTEGERS
1 / 2 #=> 0
# to solve the issue we need to cast at least one of those digit to float
1.0 / 2 # => 0.5
1.to_f / 2 #=> 0.5
1 / Float(2) #=> 0.5
# alternatively, fdiv may be used to return the float point result of devision
# -- without explicity casting either
# OPERAND:
1.fdiv 2 #=> 0.5
