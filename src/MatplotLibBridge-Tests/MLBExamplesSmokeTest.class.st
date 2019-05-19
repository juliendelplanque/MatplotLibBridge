Class {
	#name : #MLBExamplesSmokeTest,
	#superclass : #TestCase,
	#instVars : [
		'plotsDirectory'
	],
	#category : #'MatplotLibBridge-Tests'
}

{ #category : #accessing }
MLBExamplesSmokeTest class >> defaultTimeLimit [
	^ 30 seconds
]

{ #category : #running }
MLBExamplesSmokeTest >> setUp [
	super setUp.
	plotsDirectory := (FileLocator imageDirectory / 'test-plots') ensureCreateDirectory
]

{ #category : #running }
MLBExamplesSmokeTest >> tearDown [
	plotsDirectory ensureDeleteAllChildren.
	plotsDirectory ensureDelete.
	super tearDown
]

{ #category : #tests }
MLBExamplesSmokeTest >> testGeneration [
	"I am a smoke test, I just ensure plots parts of example can be generated on the disk."
	MLBExamples generatePlotsForExamplesIn: plotsDirectory.
]
