actions
logout

	| store sessions active |
	self clearTextFields.
	self socialProvider isAuthenticated ifFalse: [^ false].
	store := MTSettingsStore default.
	sessions := store at: #sessions ifAbsent: [OrderedCollection new].
	active := MTProviderFactory providerFromSettings.
	sessions remove: active ifAbsent: [].
	active reset.
	MTProviderFactory mastodonInstance: nil.
	MTProviderFactory blueSkyInstance: nil.
	store at: #sessions put: sessions.
	sessions isEmpty
		ifTrue: [
			store removeKey: #token ifAbsent: [].
			store removeKey: #refreshToken ifAbsent: [].
			store removeKey: #baseURL ifAbsent: [].
			store removeKey: #provider ifAbsent: [].
			MTAccountStore resetDefaultAccount]
		ifFalse: [self activateSession: sessions first].
	MTUIWindow instance ifNotNil: [
		MTUIWindow instance refreshProvider.
		MTUIWindow instance loadSettingsView].
	^ true