ids
randomNumberGenerator
	^ RandomNumberGenerator ifNil: [ RandomNumberGenerator := Random new ]