http-actions
alias: aSegmentIOUser withId: anOldId
	| data |
	data := Dictionary new.
	data at: 'previousId' put: anOldId.
	data at: 'userId' put: aSegmentIOUser userId.
	self addLibraryInfoTo: data.
	self isBatchingRequests
		ifTrue: [ 
			data at: 'timestamp' put: DateAndTime now asUTC printString.
			data at: 'action' put: 'identify'.
			self enqueue: data ]
		ifFalse: [ 
			| response |
			response := self httpClient post: self identifyUrl json: data asJsonString.
			^ self handleResponse: response ]