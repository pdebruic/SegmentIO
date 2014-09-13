instance-creation
firstName: aFirstName lastName: aLastName id: anId
	^ self new
		firstName: aFirstName;
		lastName: aLastName;
		userId: anId;
		yourself