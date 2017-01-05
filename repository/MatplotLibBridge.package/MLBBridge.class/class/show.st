pyplot
show
	"Invoke matplotlib.pyplot.show()"
	MLBFunctionInvocation new
		target: self pyplotModule;
		functionName: 'show';
		execute