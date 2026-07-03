actions
logout

	self clearTextFields.
	self socialProvider isAuthenticated ifFalse: [^ false].
	MTSettingsStore reset.
	MTUIWindow instance ifNotNil: [MTUIWindow instance refreshProvider].
	self socialProvider reset.
	MTAccountStore resetDefaultAccount.
	MTUIWindow instance loadSettingsView.
	^ true