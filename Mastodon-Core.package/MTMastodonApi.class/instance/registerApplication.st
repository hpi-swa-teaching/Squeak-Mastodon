authentification
registerApplication

	| json |
	[
		json := self getRegistrationCredentials.
		self
			clientID: (json at: 'client_id');
			clientSecret: (json at: 'client_secret')]
		on: ConnectionRefused
		do: [:ex |
			self inform: 'Server not reachable. Do you have a stable connection?'.
			^ nil]
		on: Error
		do: [:ex |
			ex messageText = 'SSL connect failed with code: -5'
				ifTrue: [
					self inform: 'Could not register app on this instance. Did you enter the correct URL?'.
					^ nil]
				ifFalse: [
					self inform: 'Unknown Error occured. Error Code: ', ex messageText.
					^ nil]]