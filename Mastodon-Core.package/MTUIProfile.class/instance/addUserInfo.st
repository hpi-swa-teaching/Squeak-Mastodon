render
addUserInfo

	| userInfo text |
	userInfo := RectangleMorph new.
	userInfo := MTUIView setWrapper: userInfo.
	userInfo
		color: (Color r: 0.1 g: 0.2 b: 0.3);
		cellPositioning: #center;
		wrapCentering: #center;
		cellInset: 20;
		layoutInset: 20;
		borderWidth: 0.
	
	text := TextMorph new.
	text
		contentsWrapped: (MTUtils asTextFromHtml: '<b><font size="20">', self user displayName, '</font></b><br>', '<font color="#cccccc">@', self user acct, '</font><br><br>', self user note, '<br><br>', '<b>', self user statusesCount, '</b> Toots - <b>', self user followingCount, '</b> Following - <b>', self user followersCount, '</b> Followers');
		wrapFlag: true;
		width: 400;
		color: Color white;
		centered;
		lock.
	
	userInfo addMorphBack: self userImageMorph.
	userInfo addMorphBack: text.
	
	self addMorphBack: userInfo