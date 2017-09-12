require('rspec')
require('pry')
require('anagrams_and_antigrams')

describe ('Anagram#anagrams_and_antigrams') do

  it('checks if input is a anagram') do
    example = Anagram.new('ruby', 'bury')
    expect(example.find_the_anagram).to(eq("These words are anagrams"))
  end

  it('checks if input is a anagram with capital letters') do
    example = Anagram.new('rUby', 'Bury')
    expect(example.find_the_anagram).to(eq("These words are anagrams"))
  end

  it('checks if input is not a word') do
    example = Anagram.new('wds', 'gtd')
    expect(example.find_the_anagram).to(eq("Need to add vowels to your word"))
  end

  it('checks if input is a anti-gram') do
    example = Anagram.new('hi', 'bye')
    expect(example.find_the_anagram).to(eq("These words are anti-grams"))
  end

  it('checks if input is a palindrome') do
    example = Anagram.new('tab', 'bat')
    expect(example.find_the_anagram).to(eq("This is a palindrome"))
  end

  it('checks if it has multiple words') do
    example = Anagram.new('Bared, beard.', 'Bread, debar.')
    expect(example.find_the_anagram).to(eq("These words are anagrams"))
  end
end
