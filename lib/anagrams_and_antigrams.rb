#! user/bin/env ruby
class Anagram

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @word1_array = word1.downcase.gsub(/\s+/, "").split("").sort!
    @word2_array = word2.downcase.gsub(/\s+/, "").split("").sort!
  end

  def find_the_anagram
    if is_it_word?
      return "Need to add vowels to your word"
    elsif @word1 == @word2.reverse
      return "This is a palindrome"
    elsif @word1_array != @word2_array
      return "These words are anti-grams"
    elsif @word1_array == @word2_array
      return "These words are anagrams"
    end
  end

  def is_it_word?
    if @word1_array && @word2_array.none? { |x| ['y', 'a', 'e', 'i', 'o', 'u',].include?(x) }
      true
    end
  end

  def antigrams?
    if @word1_array != @word2_array
      true
    end
  end

  def palindrome?
    if @word1 == @word2.reverse()
      true
    end
  end
end
