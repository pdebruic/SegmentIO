as yet unclassified
jsonData
	| dict |
	dict := Dictionary new.
	dict at: 'event' put: self eventName.
	dict at: 'userId' put: self user userId.
	self addTraitsToJsonData: dict.

	self addContextToJsonData: dict.
	self addTimeStampToJsonData: dict.
	^ dict