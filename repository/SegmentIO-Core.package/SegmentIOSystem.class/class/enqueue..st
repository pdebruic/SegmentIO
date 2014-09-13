queue
enqueue: someData
	self queue nextPut: someData.
	self processQueueIfNecessary