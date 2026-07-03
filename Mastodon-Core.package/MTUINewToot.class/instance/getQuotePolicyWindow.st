render
getQuotePolicyWindow

	| menu |
	menu := DialogWindow new title: 'Who can quote'.
	(menu createButton: 'Anyone' value: 'public') balloonText: 'Anyone can quote.'.
	(menu createButton: 'Followers only' value: 'followers') balloonText: 'Quotes are limited to followers.'.
	(menu createButton: 'Just me' value: 'nobody') balloonText: 'Nobody except yourself can quote.'.
	menu createCancelButton.
	
	^ menu