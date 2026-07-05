accessing-morphs
accountBanner

	^ accountBanner ifNil: [accountBanner := self getAccountBanner]