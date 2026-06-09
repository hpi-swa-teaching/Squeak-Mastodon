defaults
secondAccount

	^ MTLoginCredentials
		createWithUsername: self secondUsername
		baseURL: self secondBaseURL
		token: self secondToken