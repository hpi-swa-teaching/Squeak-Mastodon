accessing
quotePolicyButton

	^ quotePolicyButton ifNil: [quotePolicyButton := self getQuotePolicyButton]