action
search

	| query queryResult result |
	query := self searchTextField theText asString.
	queryResult := self socialProvider search: query.
	queryResult isError ifTrue: [
		self accounts: OrderedCollection new.
		WorldState addDeferredUIMessage: [self render].
		^ self inform: (queryResult error ifNil: ['Search failed'])].
	result := queryResult value.
	self accounts: (result isNil ifTrue: [OrderedCollection new] ifFalse: [result accounts]).
	WorldState addDeferredUIMessage: [self render].
	self accounts isEmpty ifTrue: [self inform: 'No users found']