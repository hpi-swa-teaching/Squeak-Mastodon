render
getAuthorizationCodeField

	^ authorizationCodeField ifNil: [
		authorizationCodeField := MTLineEdit new
			hResizing: #spaceFill;
			height: 36;
			helpText: 'Enter authorization code here']