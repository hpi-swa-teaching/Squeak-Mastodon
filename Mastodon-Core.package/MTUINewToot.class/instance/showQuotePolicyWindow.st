render
showQuotePolicyWindow

	| menu response |
	menu := DialogWindow new title: 'Who can quote'.
	(menu createButton: 'Anyone' value: 'public') balloonText: 'Anyone can quote.'.
	(menu createButton: 'Followers only' value: 'followers') balloonText: 'Quotes are limited to followers.'.
	(menu createButton: 'Just me' value: 'nobody') balloonText: 'Nobody except yourself can quote.'.
	menu createCancelButton.
	self addMorph: menu.
	
	response := menu getUserResponse.
	response = false ifFalse: [self quotePolicySetting: response]