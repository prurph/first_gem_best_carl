require 'spec_helper'

describe String do
  describe '#word_count' do
    it 'should return 1 when the string is one word long' do
      a_string = "apple"
      expect(a_string.word_count).to eq(1)
    end

    it 'should return 3 when the string is three words long' do
      a_string = "apples are delicious"
      expect(a_string.word_count).to eq(3)
    end
  end

  describe '#unique_words' do
    it 'should return the correct 3 words when the string is three unique words' do
      a_string = "mangos are wonderful"
      expect(a_string.unique_words).to match_array ["mangos", "are", "wonderful"]
    end

    it 'should return 1 word when the string is duplicated words' do
      a_string = "HODOR HODOR HODOR"
      expect(a_string.unique_words).to match_array ["HODOR"]
    end

    it 'should return an empty array when the string is empty' do
      a_string = ""
      expect(a_string.unique_words).to match_array []
    end

    it 'should return only the unique words for partial duplicates' do
      a_string = "hello world hello hi!"
      expect(a_string.unique_words).to match_array ["hello", "world", "hi!"]
    end
  end
end
