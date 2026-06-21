initialization
getAccount	
	
	| api |
	api := MTMastodonApi for: self.
	"self account: api getCurrentUser."