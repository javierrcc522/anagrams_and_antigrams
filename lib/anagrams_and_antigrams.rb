#! user/bin/env ruby
class Anagram
  def compare_words(word1, word2)
    if word1.length !=0 && word1.match((/[AEIOU]+/i)) && word2.length !=0 && word2.match((/[AEIOU]+/i))
    return true
    else
    return false
    end
  end
end
