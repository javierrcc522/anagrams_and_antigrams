#! user/bin/env ruby
class Anagram

  def initialize
  end

  def compare_words(word1, word2)
    word1 = word1.downcase.gsub(/\s+/, "").split("").sort!
    word2 = word2.downcase.gsub(/\s+/, "").split("").sort!

    if word1 && word2.none? { |x| ['a', 'e', 'i', 'o', 'u', 'y'].include?(x) }

      return "Add vowels"

    elsif word1 == word2.join().reverse()
      return "palindrum"

    elsif word1 == word2
      return "Anagram"

    end
  end
end
