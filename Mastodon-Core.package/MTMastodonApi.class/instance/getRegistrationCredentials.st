authentification
getRegistrationCredentials

	^ self deserialize: (self postRequest: '/api/v1/apps' withParameters: self registrationParameters tries: self numberOfTries)