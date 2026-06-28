accessing
reblogButton

	^ reblogButton ifNil: [reblogButton := self getReblogButton]