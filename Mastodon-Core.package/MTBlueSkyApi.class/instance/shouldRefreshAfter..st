helpers
shouldRefreshAfter: aResponse

	^ aResponse notNil and: [aResponse isSuccess not and: [self refreshToken notNil]]