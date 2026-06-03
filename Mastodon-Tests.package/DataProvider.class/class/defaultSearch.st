generated
defaultSearch

	| search |
	search := Dictionary new.
	search at: 'accounts' put: {self defaultAccount}.
	search at: 'statuses' put: {}.
	search at: 'hashtags' put: {}.
	
	^ search