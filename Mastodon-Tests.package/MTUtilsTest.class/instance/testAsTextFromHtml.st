formatting
testAsTextFromHtml

	self assert: (MTUtils asTextFromHtml: 'Hello world') asString equals: 'Hello world'