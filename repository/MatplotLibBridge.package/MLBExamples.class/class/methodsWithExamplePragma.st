accessing - documentation
methodsWithExamplePragma
	^ ((Pragma allNamed: self pragmaForExample in: self class) sorted: [ :a :b | (a argumentAt: 1) < (b argumentAt: 1) ] ) collect: #methodSelector