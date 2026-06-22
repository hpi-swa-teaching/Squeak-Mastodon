render
makeClickable: aText from: start to: stop

	| currentUserId |
	currentUserId := MTMastodonApi getInstance getCurrentUser value id.
	
	aText
		addAllAttributes: {
			PluggableTextAttribute new
				evalBlock: [:obj |
					currentUserId = self object account id
						ifTrue: [MTUIWindow instance loadProfileViewOfCurrentUser: self object account]
						ifFalse: [MTUIWindow instance loadProfileViewOf: self object account]];
				yourself.
			TextColor color: (self getTextColor: self object account)}
		from: start
		to: stop