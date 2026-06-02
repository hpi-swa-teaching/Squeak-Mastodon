generated
defaultSearch

	| search |
	search := OrderedCollection new.
	search at: 'accounts' put: {self defaultAccount}.
	search at: 'statuses' put: {}.
	search at: 'hashtags' put: {}.
	
	^ search