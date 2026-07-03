render
showVisibilityWindow

	| menu response |
	menu := self getVisibilityWindow.
	self addMorph: menu.
	
	response := menu getUserResponse.
	
	response ifTrue: [
		self visibilitySetting: response.
		(response = 'private' or: [response = 'direct'])
			ifTrue: [
				self quotePolicySetting: 'nobody'.
				self quotePolicyButton enabled: false]
			ifFalse: [self quotePolicyButton enabled: true]]