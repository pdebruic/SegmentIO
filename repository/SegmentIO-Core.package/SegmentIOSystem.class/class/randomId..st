ids
randomId: aLength
	^ String
		streamContents: [ :targetStream | 
			aLength
				timesRepeat: [ 
					targetStream
						nextPut:
							('0123456789ABCDEFGHIJKLMNOPQRSTUVWXZYabcdefghijklmnopqrstuvwxyz' at: (self randomNumberGenerator nextInt: 62)) ] ]