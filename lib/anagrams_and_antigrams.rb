#! user/bin/env ruby
class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def compare_words(word1, word2)
    word1 = word1.downcase.gsub(/\s+/, "").split("").sort!
    word2 = word2.downcase.gsub(/\s+/, "").split("").sort!
    word1==word2
  end
end
