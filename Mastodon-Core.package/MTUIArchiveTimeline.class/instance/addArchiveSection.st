render
addArchiveSection

	| title |
	title := TextMorph new.
	title
		contents: 'Archive' asHtmlText;
		lock.
	
	self addMorphBack: title.