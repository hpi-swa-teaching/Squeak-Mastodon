render
addGeneralUserInfo

	| userInfo text |
	userInfo := MTUIView applyWrapperLayoutTo: RectangleMorph new.
	userInfo
		color: (Color r: 0.1 g: 0.2 b: 0.3);
		cellPositioning: #center;
		wrapCentering: #center;
		cellInset: 20;
		layoutInset: 20;
		borderWidth: 0.
	
	text := TextMorph new.
	text
		contentsWrapped: (MTUtils asTextFromHtml: '<b><font size="20">', account displayName, '</font></b><br>', '<font color="#cccccc">@', account federatedUsername, '</font><br><br>', account note, '<br><br>', '<b>', account statusesCount, '</b> Toots - <b>', account followingCount, '</b> Following - <b>', account followersCount, '</b> Followers');
		wrapFlag: true;
		width: 400;
		color: Color white;
		centered;
		lock.
	
	userInfo addMorphBack: self getAccountAvatarMorph.
	userInfo addMorphBack: text.
	
	^ userInfo