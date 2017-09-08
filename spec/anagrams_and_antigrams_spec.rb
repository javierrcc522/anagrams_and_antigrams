require('rspec')
require('pry')
require('anagrams_and_antigrams')

example = Anagram.new()

describe ('Anagram#anagrams_and_antigrams') do
  it('checks if input is a anagram') do
    expect(example.compare_words('ruby', 'bury')).to(eq("These words are anagrams"))
  end

  it('checks if input is not a word') do
    expect(example.compare_words('wds', 'gtd')).to(eq("Need to add vowels to your word"))
  end

  it('checks if input is a anti-gram') do
    expect(example.compare_words('hi', 'bye')).to(eq("These words are anti-grams"))
  end

end
