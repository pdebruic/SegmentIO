as yet unclassified
jsonDataFor: aUser
	| dict |
	dict := Dictionary new.
	dict at: 'groupId' put: self groupId.
	dict at: 'userId' put: aUser userId.
	self addTraitsToJsonData: dict.
	self addContextToJsonData: dict.
	self addTimeStampToJsonData: dict.
	^ dict