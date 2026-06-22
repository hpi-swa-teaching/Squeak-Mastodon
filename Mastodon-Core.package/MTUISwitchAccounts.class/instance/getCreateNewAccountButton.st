render-buttons
getCreateNewAccountButton

	^ SimpleButtonMorph new
		label: '+ Add Account';
		target: self;
		actionSelector: #openAddAccount;
		color: Color veryVeryLightGray;
		yourself