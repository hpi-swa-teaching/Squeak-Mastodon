accessing-buttons
searchButton

	^ searchButton ifNil: [searchButton := self getSearchButton]