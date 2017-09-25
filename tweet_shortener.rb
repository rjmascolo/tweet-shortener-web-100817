# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(string)
  #split up the string into each word
  dictionary
  dic_keys = dictionary.keys
  string_array = string.split(" ")
  new_array = string_array.map do |word|
    if dic_keys.include?(word)
      word = dictionary[word]
    else
      word
    end
  end
  new_array.join(" ")
end

def bulk_tweet_shortener (array)
  array.each {|string| puts word_substituter(string)}
end

def selective_tweet_shortener (string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator (string)
  shorter = word_substituter(string)
   if shorter.length > 140
     return shorter[1..140]
   else
     shorter
   end 
  # if shorter.length >= 140
  #   puts "#{shorter[0..139]}..."
  # else
  #   puts shorter
  # end
end
