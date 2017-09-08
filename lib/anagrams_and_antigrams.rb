#! user/bin/env ruby
class Anagram
  def compare_words(word1, word2)
    if word1.downcase.match((/[AEIOU]+/i)) && word2.downcase.match((/[AEIOU]+/i))
    return true
    else
    return false
    end
  end
end
