as yet unclassified
addMentionSection

	| title |
	title := TextMorph new.
	
	title
		contents: 'Mentions' asHtmlText;
		lock.
	
	self addMorphBack: title.