as yet unclassified
jsonData
	| dict |
	dict := Dictionary new.
	dict at: 'userId' put: self userId.
	self addTraitsToJsonData: dict.
	self addIntegrationsToJsonData: dict.
	self addContextToJsonData: dict.
	self addTimeStampToJsonData: dict.
	^ dict