json-data
addPropertiesToJsonData: aDictionary
	self hasTraitsOrProperties
		ifTrue: [ aDictionary at: 'properties' put: self properties ]