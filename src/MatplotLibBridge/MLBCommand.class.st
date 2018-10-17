"
I am an abstract command.

My subclasses need to set my #target inst var with the name of the target to apply the python function on.

They may use the <mlbAttribute> or <mlbAttribute: N> pragma to define respectively: inst var that will be used as keyword arguments and inst var that will be used as positional arguments during the function call. The N argument of the pragma is the position of the argument.
"
Class {
	#name : #MLBCommand,
	#superclass : #Object,
	#instVars : [
		'module'
	],
	#category : 'MatplotLibBridge-Commands'
}

{ #category : #execute }
MLBCommand >> execute [
	self generateInstructions execute
]

{ #category : #accessing }
MLBCommand >> functionName [
	^ self subclassResponsibility
]

{ #category : #generating }
MLBCommand >> generateInstructions [
	^ P3GInstructionsList new
		add: self module import;
		add: ((self module => self functionName)
					callWith: self mlbPositionalAttributes with: self mlbAttributesDict);
		yourself
]

{ #category : #accessing }
MLBCommand >> mlbAttributeAccessors [
	^ (Pragma allNamed: #mlbAttribute in: self class) collect: #methodSelector
]

{ #category : #accessing }
MLBCommand >> mlbAttributesDict [
	^ (self mlbAttributeAccessors
		select: [ :selector | (selector value: self) isNotNil ]
		thenCollect: [ :selector | selector -> (selector value: self) ]) asDictionary
]

{ #category : #accessing }
MLBCommand >> mlbPositionalAttributes [
	^ (((Pragma allNamed: #mlbAttribute: in: self class)
		select: [ :p | (p methodSelector value: self) isNotNil ]
		thenCollect: [ :p | (p methodSelector value: self) -> p arguments first ])
		sorted: [ :a :b | a value < b value ]) collect: #key
]

{ #category : #accessing }
MLBCommand >> module [
	^ module
]

{ #category : #accessing }
MLBCommand >> module: anObject [
	module := anObject
]
