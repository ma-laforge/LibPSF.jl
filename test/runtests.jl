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


#==Tests on various file types
===============================================================================#
function testfileaccess(path::AbstractString)
	println("\n\nfile: $path")
	printsep()
	reader = LibPSF2._open(path)
	display(reader.properties)
	@show _names = names(reader)

	for v in _names[1:3]
		println()
		display(read(reader, v))
	end
	close(reader)
end


testfileaccess(sampledata("opBegin"))
testfileaccess(sampledata("pss0.fd.pss"))
testfileaccess(sampledata("timeSweep"))
testfileaccess(sampledata("srcSweep"))


#==Tests on transient data
===============================================================================#
filename = "timeSweep"
signame = "INN"

println("\nOpen $filename:")
printsep()
reader = LibPSF2._open(sampledata(filename))
display(reader.properties)

println("\nRead in sweep info:")
@show LibPSF2.get_sweep_param_names(reader)
t = readsweep(reader)
@show t

println("\nRead in $signame vector:")
printsep()
y = read(reader, signame)
@show y

:Test_Complete
