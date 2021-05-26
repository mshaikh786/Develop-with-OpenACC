# Develop-with-OpenACC
Beginner level introduction to programming with OpenACC  

Exercise in C are provided
Each exercise is commented with some hints to add the OpenACC pragma directives.

The exercise code uses a 2D stencil to simulate conduction of tempreature from boundaries of a metal plate to the interior. 
The Left and bottom edge of the plate is hot i.e. set to MAX_TEMP. 
The conduction of temperature is modelled by 2D Laplace equation. 
Temperature of each stencil is an average of its 4 neighbours.


BUILD:
-----
Load the module pgi/18.3 to access PGI compiler "pgcc" and profiler "pgprof". 
Run commmand "make" to build code.

RUN: 
----
- When compiled the makefile should produce executables with prefix "heat_eq" and suffix versions.
- The executable accepts an optional command line argument "-m " to modify the number of maximum iterations the solver should run for.
- Jobscripts are provided to submit to SLURM scheduler under the prescribed reservation




Other Options:
--------------
Add/amend the following in the Makefile
- To modify the problem use -DROWS or -DCOLS to redefine rows and columns
- To modify the maximum tempreature use -DMAX_TEMP
- Optionally, output can be written in VTK format to be visualized in Paraview. 
  To produce the vtk output, recompile with "make VIS=1". 
- The frequency of writing can be set using -DCHKPNT_ITER , by default set to 1000 i.e. writing every 1000th iteration.


