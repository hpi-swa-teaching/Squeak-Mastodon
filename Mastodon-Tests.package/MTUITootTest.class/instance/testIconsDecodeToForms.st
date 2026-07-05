icons
testIconsDecodeToForms

	#(#camerafocus #camera #defaultAvatar #directMessage #followActive #follow #heartActive #heartBlack #heart #home #lists #mentions #messages #muteActive #mute #newToot #newTweet #repostActive #repost #retweetActive #retweet #search #settings #starActive #star #user) do: [:selector | self assert: ((MTUIIcons perform: selector) isKindOf: Form)]