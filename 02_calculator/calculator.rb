#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
array.reduce(0, :+)
end

def multiply(array)
  array.inject(:*)
end

def power(a, b)
  a**b
end

def factorial(number)
  (1..number).reduce(:*) || 1
end
