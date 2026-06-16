ui
showSuccessMessage: aMessage on: aMorph

	| successfullyPerformedText |
	successfullyPerformedText := TextMorph new.
	successfullyPerformedText
		contents: aMessage;
		color: Color blue.
	aMorph addMorphBack: successfullyPerformedText.
	
	[
		(Delay forSeconds: 3) wait.
		WorldState addDeferredUIMessage: [successfullyPerformedText delete]] fork