as yet unclassified
testUser
	self
		assert:
			('{"context":{},"timestamp":"*","userId":"a1b2c3d4e5","traits":{"firstName":"Test","lastName":"User","email":"test@example.com"}}'
				match: user jsonData asJsonString)