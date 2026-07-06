actions
doActionFor: aParameter

	self active
		ifTrue: [self doActiveActionFor: aParameter]
		ifFalse: [self doInactiveActionFor: aParameter].
		
	self toggleActive