json-data
addTraitsToJsonData: aDictionary
	self hasTraitsOrProperties
		ifTrue: [ aDictionary at: 'traits' put: self traits ]