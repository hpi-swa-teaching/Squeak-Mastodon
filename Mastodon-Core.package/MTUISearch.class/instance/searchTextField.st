accessing-morphs
searchTextField

	^ searchTextField ifNil: [searchTextField := self getSearchTextField]