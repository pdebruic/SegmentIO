instance-creation
firstName: aFirstName lastName: aLastName email: anEmailAddressString id: anId
	^ self new
		firstName: aFirstName;
		lastName: aLastName;
		email: anEmailAddressString;
		userId: anId;
		yourself