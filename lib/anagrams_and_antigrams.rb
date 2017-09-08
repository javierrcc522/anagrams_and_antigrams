#! user/bin/env ruby
class Anagram

  def initialize()
  end

  def compare_words(word1, word2)
    word1 = word1.downcase.gsub(/\s+/, "").split("").sort!
    word2 = word2.downcase.gsub(/\s+/, "").split("").sort!

    if word1 && word2.none? { |x| ['y', 'a', 'e', 'i', 'o', 'u',].include?(x) }

       "Need to add vowels to your word"

    elsif word1 == word2.join().reverse()
       "palindrum"

    elsif word1 != word2
       "These words are anti-grams"

    elsif word1 == word2
       "These words are anagrams"
    end
  end
end
