accessing
visibilitySetting

	^ visibilitySetting ifNil: [
		visibilitySetting := self defaultVisibilitySetting.
		self updateQuotePolicy.
		^ visibilitySetting]