constants
newAccessDictionary

	^ Dictionary new
		at: 'scope' put: self class scope;
		at: 'client_id' put: self clientID;
		at: 'client_secret' put: self clientSecret;
		at: 'grant_type' put: 'authorization_code';
		yourself