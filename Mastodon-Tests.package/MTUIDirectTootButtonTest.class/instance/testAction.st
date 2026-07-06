actions
testAction

	| buttonMorph |
	buttonMorph := MTUIDirectTootButton new arguments: {MTDataProvider firstAccount}.
	
	self shouldnt: [buttonMorph doButtonAction] raise: Error