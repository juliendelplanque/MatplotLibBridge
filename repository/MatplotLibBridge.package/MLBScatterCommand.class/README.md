I am a wrapper for the matplotlib.pyplot.scatter function.

I have the following attributes as described in matplotlib doc:
-x, y : array
Input data

-s : scalar or array_like, shape (n, ), optional, default: 20
size in points^2.

-c : color, sequence, or sequence of color, optional, default: ‘b’
c can be a single color format string, or a sequence of color specifications of length N, or a sequence of N numbers to be mapped to colors using the cmap and norm specified via kwargs (see below). Note that c should not be a single numeric RGB or RGBA sequence because that is indistinguishable from an array of values to be colormapped. c can be a 2-D array in which the rows are RGB or RGBA, however, including the case of a single row to specify the same color for all points.

-marker : MarkerStyle, optional, default: ‘o’
See markers for more information on the different styles of markers scatter supports. marker can be either an instance of the class or the text shorthand for a particular marker.

-cmap : Colormap, optional, default: None
A Colormap instance or registered name. cmap is only used if c is an array of floats. If None, defaults to rc image.cmap.

-norm : Normalize, optional, default: None
A Normalize instance is used to scale luminance data to 0, 1. norm is only used if c is an array of floats. If None, use the default normalize().

-vmin, vmax : scalar, optional, default: None
vmin and vmax are used in conjunction with norm to normalize luminance data. If either are None, the min and max of the color array is used. Note if you pass a norm instance, your settings for vmin and vmax will be ignored.

-alpha : scalar, optional, default: None
The alpha blending value, between 0 (transparent) and 1 (opaque)

-linewidths : scalar or array_like, optional, default: None
If None, defaults to (lines.linewidth,).

-edgecolors : color or sequence of color, optional, default: None
If None, defaults to (patch.edgecolor). If ‘face’, the edge color will always be the same as the face color. If it is ‘none’, the patch boundary will not be drawn. For non-filled markers, the edgecolors kwarg is ignored; color is determined by c.