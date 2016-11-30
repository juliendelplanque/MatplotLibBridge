I am a wrapper for the matplotlib.pyplot.figure function.

From the doc, I can be configured with:
- num : integer or string, optional, default: none If not provided, a new figure will be created, and the figure number will be incremented. The figure objects holds this number in a number attribute. If num is provided, and a figure with this id already exists, make it active, and returns a reference to it. If this figure does not exists, create it and returns it. If num is a string, the window title will be set to this figure’s num.

-figsize : tuple of integers, optional, default: None width, height in inches. If not provided, defaults to rc figure.figsize.

-dpi : integer, optional, default: None resolution of the figure. If not provided, defaults to rc figure.dpi.

-facecolor : the background color. If not provided, defaults to rc figure.facecolor

-edgecolor : the border color. If not provided, defaults to rc figure.edgecolor