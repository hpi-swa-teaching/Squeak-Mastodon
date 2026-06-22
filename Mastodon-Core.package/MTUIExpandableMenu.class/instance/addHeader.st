render
addHeader

	| header |
	header := StringMorph contents: '[+] ', self title.
	header on: #mouseUp send: #value to: [
		self expanded: self expanded not.
		self expanded
			ifFalse: [header contents: '[+] ', self title]
			ifTrue: [header contents: '[-] ', self title].
		self render.
		self layoutChanged].
	
	header on: #mouseEnter send: #value to: [header color: Color gray].
	header on: #mouseLeave send: #value to: [header color: Color black].
	
	self addMorph: header