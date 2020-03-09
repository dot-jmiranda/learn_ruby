# frozen_string_literal: true

# write your code here
def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s, n = 2)
  a = s

  (n - 1).times do
    a += ' ' + s
  end

  a
end

def start_of_word(s, n)
  c = ''

  n.times do |i|
    c += s[i]
  end

  c
end

def first_word(s)
  a = s.split(' ')

  a[0]
end

def titleize(s)
  excluded_words = %w[and over the]

  words = s.split(' ')
           .each { |word| word.capitalize! unless excluded_words.include? word }
  words[0].capitalize!
  words = words.join(' ')
end

titleize('jaws')
