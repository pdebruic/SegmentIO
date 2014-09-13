queue
processQueueIfNecessary
	self queue size >= self queueProcessingSize
		ifTrue: [ ^ self processItemsFromQueue: self queueProcessingSize ].
	(DateAndTime now - self queueLastProcessedTime > self processQueueEveryDuration and: [ self queue isEmpty not ])
		ifTrue: [ self processItemsFromQueue: self queue size ]