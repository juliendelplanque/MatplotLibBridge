"
I ensure communication with Python using Atlas and provide a slightly higher level than pure Atlas use.
"
Class {
	#name : #MLBAtlasInterpreter,
	#superclass : #P3GInterpreter,
	#category : 'MatplotLibBridge-Atlas'
}

{ #category : #python }
MLBAtlasInterpreter >> executePythonCode: aString [
	Atlas sendMessage: aString
]

{ #category : #python }
MLBAtlasInterpreter >> executePythonCodeAngGetValue: aString [
	^ Atlas getValue: aString
]
