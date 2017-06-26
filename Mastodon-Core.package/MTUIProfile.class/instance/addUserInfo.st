as yet unclassified
addUserInfo 
	| userInfo text |
	
	userInfo := RectangleMorph new.
	userInfo
		color: (Color r: 0.1 g: 0.2 b: 0.3);
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #center;
		wrapCentering: #center;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 20;
		layoutInset:20;
		borderWidth: 0.
	
	text := TextMorph new.
	text 
		contentsWrapped: (
			'<b><font size="20">', user displayName , '</font></b><br>',
			'<font color="#cccccc">@', user username , '</font><br><br>',
			user note, '<br><br>',
			'<b>', user statusesCount, '</b> Tweets - <b>',  user followingCount, '</b> Following - <b>', user followersCount, '</b> Followers') asHtmlText;
		wrapFlag: true;
		width: 400;
		color: Color white;
		centered;
		lock.
		
	userInfo addMorphBack: self userImageMorph.
	userInfo addMorphBack: text.
	
	self addMorphBack: userInfo.
	