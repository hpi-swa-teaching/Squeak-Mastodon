actions
checkNote

	self noteText contents size > self maximumNoteLength ifTrue: [
		self inform: self tooLongNoteInformMessage.
		^ false].
	^ true