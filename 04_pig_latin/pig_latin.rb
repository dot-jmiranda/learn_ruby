# frozen_string_literal: true

# write your code here
def translate(s)
  s.split.map do |word|
    cap = word == word.capitalize

    word =~
      /^                    # string start
      (
          [^aeiouyq]*       # any consonants in a row
          (qu)?             # when qu
      )
      (.*)                  # rest of string
      $/x # end of string

    first_phoneme = Regexp.last_match(1)
    rest_of_word = Regexp.last_match(3)

    if cap == true
      if /[.,!?':;]/.match?(first_phoneme)
        word.to_s
      else
        if /[.,!?':;]/.match?(rest_of_word[-1])
          c = rest_of_word[-1]
          rest_of_word = rest_of_word[0...-1]
          "#{rest_of_word}#{first_phoneme}ay#{c}".downcase.capitalize
        else
          "#{rest_of_word}#{first_phoneme}ay".downcase.capitalize
        end
      end
    else
      if /[.,!?':;]/.match?(first_phoneme)
        word.to_s
      else
        if /[.,!?':;]/.match?(rest_of_word[-1])
          c = rest_of_word[-1]
          rest_of_word = rest_of_word[0...-1]
          "#{rest_of_word}#{first_phoneme}ay#{c}"
        else
          "#{rest_of_word}#{first_phoneme}ay"
        end
      end
    end
  end.join(' ')
end
