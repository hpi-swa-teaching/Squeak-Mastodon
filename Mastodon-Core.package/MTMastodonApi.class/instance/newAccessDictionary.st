accessing
newAccessDictionary
	| dictionary |
	dictionary := Dictionary newFromPairs: {'password'. self password. 'username'. self username. 'scope'. self class scope. 'client_id'. self clientID. 'client_secret'. self clientSecret. 'grant_type'. 'password'}.
	^ dictionary