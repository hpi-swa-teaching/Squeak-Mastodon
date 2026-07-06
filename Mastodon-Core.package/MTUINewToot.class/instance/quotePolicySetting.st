accessing
quotePolicySetting

	^ quotePolicySetting ifNil: [
		quotePolicySetting := self defaultQuotePolicySetting.
		self updateWhoCanQuoteButton.
		^ quotePolicySetting]