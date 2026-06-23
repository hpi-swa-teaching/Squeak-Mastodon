render
makeClickable: aText from: start to: stop for: anAccount and: anId
	
	aText
		addAllAttributes: {
			PluggableTextAttribute new
				evalBlock: [:obj |
					anId = anAccount id
						ifTrue: [MTUIWindow instance loadProfileViewOfCurrentUser: anAccount]
						ifFalse: [MTUIWindow instance loadProfileViewOf: anAccount]];
				yourself.
			TextColor color: (self getTextColor: self object account)}
		from: start
		to: stop