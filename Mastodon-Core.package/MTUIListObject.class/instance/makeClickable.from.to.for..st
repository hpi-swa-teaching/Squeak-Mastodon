render
makeClickable: aText from: start to: stop for: anAccount

	aText
		addAllAttributes: {
			PluggableTextAttribute new evalBlock: [:obj | MTUIWindow instance loadProfileViewOf: anAccount].
			TextColor color: (self getTextColor: anAccount)}
		from: start
		to: stop