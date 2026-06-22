render
renderAuthorizationView
	
	self container
		removeAllMorphs;
		addMorphBack: self getAuthorizationCodeField;
		addMorphBack: self getLoginButton;
		addMorphBack: self resultTextMorph.