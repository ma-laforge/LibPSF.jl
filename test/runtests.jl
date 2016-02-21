#Test code
#-------------------------------------------------------------------------------

using LibPSF2
import LibPSF #To get file data

#No real test code yet... just demonstrate use:


#==Input data
===============================================================================#
sampledata(filename::AbstractString) = joinpath(LibPSF.rootpath, "core/data", filename)
sepline = "---------------------------------------------------------------------"
printsep() = println(sepline)

filename = "timeSweep"
signame = "INN"


#==Tests
===============================================================================#
println("\nOpen $filename:")
printsep()
reader = LibPSF2._open(sampledata(filename))
display(reader.props)

println("\nSweep info:")
t = readsweep(reader)
@show LibPSF2.get_sweep_param_names(reader)
@show t

println("\nSignal names:")
@show names(reader)

println("\nRead in $signame vector:")
printsep()
y = read(reader, signame)
@show y

:Test_Complete
