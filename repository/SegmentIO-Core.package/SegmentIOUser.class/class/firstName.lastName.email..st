instance-creation
firstName: aFirstName lastName: aLastName email: anEmailAddressString
	^ self new
		firstName: aFirstName;
		lastName: aLastName;
		email: anEmailAddressString;
		yourself