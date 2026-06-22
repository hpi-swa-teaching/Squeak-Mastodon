render
getAccountMorph

	| accountMorph start stop text |
	text := MTUtils asTextFromHtml: '<b>', self object account displayName, '</b> ', '<i>@', self object account federatedUsername, '<font color="', self htmlGray, '">', self interaction, '</font></i>'.
	
	"start := text indexOfSubCollection: '@'.
	stop := start + self object account federatedUsername asString size.
	self makeClickable: text from: start to: stop.
	
	interaction ifNotNil: [
		start := text indexOfSubCollection: '@' startingAt: stop.
		start = 0 ifFalse: [
			stop := text size.
			self makeClickable: text from: start to: stop]]."
	
	accountMorph := TextMorph new contentsWrapped: text.
	accountMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ accountMorph