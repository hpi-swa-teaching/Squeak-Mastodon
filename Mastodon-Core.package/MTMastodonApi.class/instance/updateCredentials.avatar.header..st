endpoints
updateCredentials: aDictionary avatar: anAvatarForm header: aHeaderForm

	| url boundary response |
	url := self urlForPath: '/api/v1/accounts/update_credentials'.
	boundary := WebUtils multipartBoundary.
	response := self webClient
		httpPost: url
		content: (self
			encodeProfileForm: aDictionary
			avatar: anAvatarForm
			header: aHeaderForm
			boundary: boundary)
		type: 'multipart/form-data; boundary=', boundary
		do: [:req |
			req method: 'PATCH'.
			req addHeader: 'Authorization' value: 'Bearer ', self token].
	
	self flushCurrentUserCache.
	^ self contentFromResponse: response