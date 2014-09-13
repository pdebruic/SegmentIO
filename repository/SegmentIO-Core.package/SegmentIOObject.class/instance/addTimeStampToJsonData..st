json-data
addTimeStampToJsonData: aDictionary
	self hasATimeStamp
		ifTrue: [ aDictionary at: 'timestamp' put: timeStamp asUTC printString ]