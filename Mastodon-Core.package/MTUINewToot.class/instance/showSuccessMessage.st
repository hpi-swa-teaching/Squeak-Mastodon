reply-template
showSuccessMessage

	| successfullySavedText |
	successfullySavedText := TextMorph new.
	successfullySavedText contents: 'Template successfully saved';
							color: Color blue.
	self addMorphBack: successfullySavedText.
	
	[
		(Delay forSeconds: 3) wait.
		successfullySavedText delete.
	] fork.