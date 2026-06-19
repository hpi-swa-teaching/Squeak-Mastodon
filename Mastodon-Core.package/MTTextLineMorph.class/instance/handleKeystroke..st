event
handleKeystroke: anEvent
	| lineEdit |
	lineEdit := self ownerThatIsA: MTLineEdit.
	anEvent keyCharacter = Character tab ifTrue: [
		lineEdit ifNotNil: [lineEdit focusNext. ^ self]].
	(anEvent keyCharacter = Character enter or: [anEvent keyCharacter = Character cr]) ifTrue: [
		lineEdit ifNotNil: [lineEdit triggerReturn. ^ self]].
	^ super handleKeystroke: anEvent