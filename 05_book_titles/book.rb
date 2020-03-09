# frozen_string_literal: true

class Book
  # write your code here
  attr_reader :title

  def title=(s)
    words = s.split(' ')
    words = [words[0].capitalize] + words[1..-1].map do |word|
      little_words = %w[a an and the in of]
      if little_words.include? word
        word
      else
        word.capitalize
      end
    end

    @title = words.join(' ')
  end
end
