# frozen_string_literal: true

# write your code here
def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(x)
  sum = 0

  x.each { |y| sum += y }

  sum
end

def multiply(x)
  total = 1

  x.each { |y| total *= y }

  total
end

def power(x, y)
  x**y
end

def factorial(x)
  total = 1

  return 1 if x == 0 || x == 1

  (1..x).each do |i|
    total *= i
  end

  total
end
