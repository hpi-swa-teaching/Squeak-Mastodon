initialization
linkFields

	self yearField
		nextField: self monthField;
		previousField: self minuteField.
	self monthField
		nextField: self dayField;
		previousField: self yearField.
	self dayField
		nextField: self hourField;
		previousField: self monthField.
	self hourField
		nextField: self minuteField;
		previousField: self dayField.
	self minuteField
		nextField: self yearField;
		previousField: self hourField