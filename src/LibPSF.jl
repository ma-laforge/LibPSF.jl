#LibPSF2: A pure Julia implementation of LibPSF
#-------------------------------------------------------------------------------
module LibPSF2

include("base.jl")
include("deserialize.jl")
include("deserialize_sweep.jl")
include("interface.jl")


#==Exported symbols
===============================================================================#
export readsweep


#==Un-"exported" symbols
================================================================================
	_open(filepath::AbstractString)::DataReader
==#

#="Base" LibPSF functions
	is_swept, get_nsweeps
	get_signal_names
	get_sweep_param_names
	get_sweep_npoints
	get_sweep_values
	get_signal_vector(reader::DataReader, signame::ASCIIString)
	get_signal_scalar(reader::DataReader, signame::ASCIIString)
	get_signal(reader::DataReader, signame::ASCIIString)
=#


#==Other interface tools (symbols not exported to avoid collisions):
================================================================================
#Already in base:
	Base.names(reader::DataReader)
	Base.read(reader::DataReader, signame::ASCIIString)
==#

end #LibPSF2
#Last line
