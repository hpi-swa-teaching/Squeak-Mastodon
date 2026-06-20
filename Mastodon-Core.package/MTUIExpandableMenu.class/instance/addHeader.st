render
addHeader

	| header |
	header := StringMorph contents: '[+] ', self title.
	header on: #mouseUp send: #value to: [
		self expanded
			ifTrue: [
				self expanded: false.
				header contents: '[+] ', self title]
			ifFalse: [
				self expanded: true.
				header contents: '[-] ', self title].
		self render.
		self layoutChanged].
	
	header on: #mouseEnter send: #value to: [header color: Color gray].
	header on: #mouseLeave send: #value to: [header color: Color black].
	
	self addMorph: header