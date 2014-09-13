queue
processItemsFromQueue: numberOfItems
	| data currentBatch numberOfItemsToSend response responseJson |
	data := Dictionary new.
	currentBatch := OrderedCollection new.
	self addLibraryInfoTo: data.
	1 to: numberOfItems do: [ :each | 
		self queue isEmpty
			ifFalse: [ currentBatch add: self queue next ] ].
	data at: 'batch' put: currentBatch.
	response := self httpClient post: self importUrl json: data asJsonString.
	responseJson := Json readFrom: response readStream.
	
	(responseJson at: 'code' ifAbsent: [ nil ]) = 'invalid_request_error'
		ifTrue: [ currentBatch do: [ :each | self queue nextPut: each ] ]
		ifFalse: [ QueueLastProcessedTime := DateAndTime now ].
	self processQueueIfNecessary