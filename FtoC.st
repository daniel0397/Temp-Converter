BorderedMorph subclass: #ExampleMorph
	instanceVariableNames: 'count countLabel cButton cText aString chButton'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Assignment'!

ExampleMorph methodsFor: 'initialization' stamp: 'DanielSmith 10/24/2017 18:35'!
initialize
	super initialize.
	self bounds: (0@0 corner:300@200).
	count :=0. 
	countLabel := StringMorph contents: count asString.
	countLabel position: 150@20.
	countLabel color: Color white.
	self addMorph: countLabel.
	cButton := SimpleButtonMorph new.
	cButton label: 'Change colour'.
	cButton bounds: (250@150 corner:50@100).
	cButton target: self.
	cButton actionSelector: #buttonPressed.
	self addMorph: cButton.
	cText := TextMorph new.
 	aString := 'Change Fahrenheit'.
 	cText contents: aString.
	cText position: (100@50).
	cText backgroundColor: Color black.
 	self addMorph: cText.


ExampleMorph methodsFor: 'action-button-actions' stamp: 'DanielSmith 10/24/2017 18:34'!
buttonPressed
	count := ((cText contents asNumber - 32)*5)//9.
	countLabel contents: count asString.! !
