json-data
addContextToJsonData: aDictionary
	self hasContext
		ifTrue: [ aDictionary at: 'context' put: context ]