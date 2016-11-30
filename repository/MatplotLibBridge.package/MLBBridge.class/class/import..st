commands
import: aModuleName
	self executePythonCode: ('import {1}' format: { aModuleName })