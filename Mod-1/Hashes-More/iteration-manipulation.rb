def dictionary
  dictionary = {
    "too" => "2",
    "to" => "2",
    "two" =>"2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


# Write a method, word_substituter that takes in a string of a tweet as an argument
# and shortens that string based on the allowed substitutes.
def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

p word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")


# Write a method, bulk_tweet_shortener that takes in an array of tweets,
# iterates over them, shortens them, and puts out the results to the screen.
def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

# bulk_tweet_shortener([tweet_one, tweet_two, tweet_three, tweet_four, tweet_five])

# Write a new method, selective_tweet_shortener, that only does the substitutions
# if the tweet is longer than 140 characters. If the tweet is 140 characters or shorter,
# just return the original tweet.
def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

# Write another method, shortened_tweet_truncator, that truncates the tweet
# to 140 characters with an ellipsis (...) if it's still too long after substitution.
def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + '...'
  else
    tweet
  end
end
