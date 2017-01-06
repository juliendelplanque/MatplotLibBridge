I am an abstract command.

My subclasses need to set my #target inst var with the name of the target to apply the python function on.

They may use the <mlbAttribute> or <mlbAttribute: N> pragma to define respectively: inst var that will be used as keyword arguments and inst var that will be used as positional arguments during the function call. The N argument of the pragma is the position of the argument.