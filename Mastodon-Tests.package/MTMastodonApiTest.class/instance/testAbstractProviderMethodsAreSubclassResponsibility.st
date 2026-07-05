configuration
testAbstractProviderMethodsAreSubclassResponsibility

	| provider |
	provider := MTSocialProvider new.
	#(clientID clientSecret getCurrentUser getPrivateTimeline providerName registerApplication reset showsProfileActions supportsVisibility usesFeeds verifyCredentials) do: [:selector |
		self should: [provider perform: selector] raise: Error].
	#(authorizationLinkFor: buildUrl: exchangeAuthorizationCode: favourite: follow: getPrivateTimelineMax: getPrivateTimelineSince: getRequest: getStatuses: search: unfavourite: unfollow:) do: [:selector |
		self should: [provider perform: selector with: nil] raise: Error].
	#(favouriteArgumentForToot:id: getStatuses:max: getStatuses:since:) do: [:selector |
		self should: [provider perform: selector with: nil with: nil] raise: Error]