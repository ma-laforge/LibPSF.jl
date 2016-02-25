# LibPSF2.jl

## Description

The LibPSF2.jl module provides a pure-Julia implementation of Henrik Johansson's .psf reader.

## Sample Usage

Examples on how to use the LibPSF2.jl capabilities can be found under the [test directory](test/).

<a name="Installation"></a>
## Installation

		julia> Pkg.clone("https://github.com/ma-laforge/LibPSF2.jl.git")

## Resources/Acknowledgments

### libpsf

LibPSF2.jl is based off of Henrik Johansson's libpsf library:

 - **libpsf** (LGPL v3): <https://github.com/henjo/libpsf>.

## Known Limitations

The LibPSF2.jl implementation is far from optimal in terms of speed.  There is room for improvement.

### Missing Features

LibPSF2.jl does not currently support all the functionnality of the original libpsf library.  A few features known to be missing are listed below:

 - Does not support `StructVector`, nor `VectorStruct` (`m_invertstruct`).

### Compatibility

Extensive compatibility testing of LibPSF2.jl has not been performed.  The module has been tested using the following environment(s):

 - Linux / Julia-0.4.0 (64-bit) / Ubuntu

#### Repository versions:

This module is based off the following libpsf code (might not be the most recent):

 - **libpsf**: Sat Nov 29 10:53:38 2014 +0100

## Disclaimer

This software is provided "as is", with no guarantee of correctness.  Use at own risk.
