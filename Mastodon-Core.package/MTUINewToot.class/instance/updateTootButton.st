updating
updateTootButton

	| inputedText inputedMedia constraintsMet |
	inputedText := self tootTextArea contents.
	inputedMedia := self media.
	constraintsMet := (inputedText size <= self maximumCharacterLength and: [inputedMedia size <= self maximumNumberOfAttachedImages]).
	
	self tootButton enabled: ((inputedText size > 0 or: [inputedMedia notEmpty]) and: [constraintsMet])