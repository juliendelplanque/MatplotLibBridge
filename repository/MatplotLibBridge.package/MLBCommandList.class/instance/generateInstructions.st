generating
generateInstructions
	"Returns the P3GInstructionsList resulting of the combinations of the
	 commands I hold."
	| instructions |
	instructions := P3GInstructionsList new.
	self commands do: [ :command |
		command generateInstructions do: [ :inst |
			instructions add: inst ] ].
	^ instructions