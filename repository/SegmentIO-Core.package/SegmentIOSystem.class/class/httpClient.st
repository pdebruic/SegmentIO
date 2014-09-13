http-client
httpClient
	^ self httpAPIClientClass new
		username: self apiKey password: '';
		yourself