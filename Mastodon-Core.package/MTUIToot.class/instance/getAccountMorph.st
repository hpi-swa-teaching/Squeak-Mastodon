render
getAccountMorph

	| accountMorph start stop text currentUserId followButton accountNameMorph following |
	text := MTUtils asTextFromHtml: '<b>', self object account displayName, '</b> ', '<i>@', self object account federatedUsername, '<font color="', self htmlGray, '">', self interaction, '</font></i>'.
	
	start := text indexOfSubCollection: '@'.
	stop := start + self object account federatedUsername asString size.
	
	text
		addAttribute: (PluggableTextAttribute new
			evalBlock: [:obj |
				currentUserId := MTMastodonApi getInstance getCurrentUser value id.
				currentUserId = self object account id
				
					ifTrue: [MTUIWindow instance loadProfileViewOfCurrentUser: self object account]
					ifFalse: [MTUIWindow instance loadProfileViewOf: self object account]];
			yourself)
		from: start
		to: stop.
	
	accountNameMorph := TextMorph new contentsWrapped: text.
	accountNameMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	"following := ((self mastodonApi getRelationship: self object account id) value at: 1) following.
	
	followButton := MTUIFollowButton new.
	followButton
		target: self;
		actionSelector: #followAccountWithId:fromSender:;
		arguments: (Array with: self object account id with: followButton);
		active: following.
	
	accountMorph := Morph new.
	accountMorph addMorphBack: accountNameMorph.
	accountMorph addMorphBack: followButton."
	
	^ accountNameMorph