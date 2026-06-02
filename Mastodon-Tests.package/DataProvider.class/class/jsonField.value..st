JSON
jsonField: key value: value

	^ '"', key, '": ', (self jsonValue: value)