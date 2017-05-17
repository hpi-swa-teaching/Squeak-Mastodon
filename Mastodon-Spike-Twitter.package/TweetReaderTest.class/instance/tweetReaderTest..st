as yet unclassified
tweetReaderTest: ID
	|twitterApi tweet|
	twitterApi :=  STTwitterApi consumerKey: '' consumerSecret: 	'' accessToken: 	'-' accessTokenSecret: ''.
	tweet := (twitterApi showTweet: ID).
	Transcript show: tweet