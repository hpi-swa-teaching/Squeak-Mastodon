accessing
quotePolicySetting

	^ quotePolicySetting ifNil: [quotePolicySetting := self defaultQuotePolicySetting]