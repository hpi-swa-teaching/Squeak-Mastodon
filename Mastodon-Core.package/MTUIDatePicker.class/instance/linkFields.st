initialization
linkFields

	self yearField
		nextField: self monthField;
		previousField: minuteField.
	self monthField
		nextField: self dayField;
		previousField: yearField.
	self dayField
		nextField: hourField;
		previousField: monthField.
	self hourField
		nextField: minuteField;
		previousField: dayField.
	self minuteField
		nextField: yearField;
		previousField: hourField