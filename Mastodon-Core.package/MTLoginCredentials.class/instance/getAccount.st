initialization
getAccount	
	
	| api |
	self halt.
	api := MTMastodonApi for: self.
	"self account: api getCurrentUser."