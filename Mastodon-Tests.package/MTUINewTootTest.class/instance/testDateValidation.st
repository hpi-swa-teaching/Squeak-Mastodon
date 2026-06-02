tests
testDateValidation
	| widget |
	widget := MTUINewToot new.
	widget yearField theText: '2026'.
	widget monthField theText: '2'.
	widget dayField theText: '29'.
	widget hourField theText: '12'.
	widget minuteField theText: '59'.
	
	self assert: widget validateScheduledDate isError.
	widget yearField theText: '2028'.
	self assert: widget validateScheduledDate isSuccess.
	widget yearField theText: '2025'.
	widget dayField theText: '1'.
	self assert: widget validateScheduledDate isError