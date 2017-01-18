I am a wrapper for the matplotlib.pyplot.bar function.

I have the following attributes as described in matplotlib doc:
-left : sequence of scalars: the x coordinates of the left sides of the bars
-height : sequence of scalars the heights of the bars
-width : scalar or array-like, optional the width(s) of the bars default: 0.8
-bottom : scalar or array-like, optional the y coordinate(s) of the bars default: None
-color : scalar or array-like, optional the colors of the bar faces
-edgecolor : scalar or array-like, optional the colors of the bar edges
-linewidth : scalar or array-like, optional width of bar edge(s). If None, use default linewidth; If 0, don’t draw edges. default: None
-tick_label : string or array-like, optional the tick labels of the bars default: None
-xerr : scalar or array-like, optional if not None, will be used to generate errorbar(s) on the bar chart default: None
-yerr : scalar or array-like, optional if not None, will be used to generate errorbar(s) on the bar chart default: None
-ecolor : scalar or array-like, optional specifies the color of errorbar(s) default: None
-capsize : scalar, optional determines the length in points of the error bar caps default: None, which will take the value from the errorbar.capsize rcParam.
-error_kw : dict, optional dictionary of kwargs to be passed to errorbar method. ecolor and capsize may be specified here rather than as independent kwargs.
-align : {‘edge’, ‘center’}, optional If ‘edge’, aligns bars by their left edges (for vertical bars) and by their bottom edges (for horizontal bars). If ‘center’, interpret the left argument as the coordinates of the centers of the bars. To align on the align bars on the right edge pass a negative width.
-orientation : {‘vertical’, ‘horizontal’}, optional The orientation of the bars.
-log : boolean, optional If true, sets the axis to be log scale. default: False