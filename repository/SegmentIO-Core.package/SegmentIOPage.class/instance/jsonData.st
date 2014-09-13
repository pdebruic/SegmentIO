as yet unclassified
jsonData
	| dict |
	dict := Dictionary new.
	dict at: 'userId' put: self user userId.
	pageName notNil
		ifTrue: [ dict at: 'name' put: pageName ].
	category notNil
		ifTrue: [ dict at: 'category' put: category ].
	self addTraitsToJsonData: dict.
	
	self addContextToJsonData: dict.
	self addTimeStampToJsonData: dict.
	^ dict