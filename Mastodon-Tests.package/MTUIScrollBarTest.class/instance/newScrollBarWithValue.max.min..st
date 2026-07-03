initialization
newScrollBarWithValue: aValue max: aMaxValue min: aMinValue

	| scrollPane scrollBar |
	scrollPane := MTUIScrollPane new extent: 100 @ aMaxValue.
	
	scrollBar := MTUIScrollBar on: scrollPane getValue: nil setValue: #vScrollBarValue:.
	
	scrollBar
		minimumValue: aMinValue;
		maximumValue: aMaxValue;
		setValue: aValue.
	
	^ scrollBar