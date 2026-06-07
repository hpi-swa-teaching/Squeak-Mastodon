authentification
getRegistrationCredentials

	^ self deserialize: (self postRequest: (self urlForPath: '/api/v1/apps') withParameters: self registrationParameters)