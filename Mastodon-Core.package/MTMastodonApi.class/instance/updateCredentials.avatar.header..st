endpoints
updateCredentials: aDictionary avatar: avatarForm header: headerForm

	| url boundary response |
	url := self buildUrl: '/api/v1/accounts/update_credentials'.
	boundary := WebUtils multipartBoundary.
	response := webClient
		httpPost: url
		content: (self encodeProfileForm: aDictionary avatar: avatarForm header: headerForm boundary: boundary)
		type: 'multipart/form-data; boundary=', boundary
		do: [:req |
			req method: 'PATCH'.
			req addHeader: 'Authorization' value: 'Bearer ', self token].
	response isSuccess
		ifTrue: [^ response content utf8ToSqueak]
		ifFalse: [^ self error: 'update_credentials failed (', response code printString, ')']
