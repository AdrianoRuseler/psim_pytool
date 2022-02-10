@title Psim Command Test
@Echo OFF
@Echo Copyright ® 2006-2021 Powersim Inc.  All Rights Reserved.
@Echo This is a sample batch file which uses PsimCmd.exe. 

REM Usage: PsimCmd.exe -i "[input file]" -o "[output file]" -v "VarName1=VarValue"  -v "VarName2=VarValue"  -g -K1 -L1 -t "TotalTime" -s "TimeStep" -tv "SecondaryTimestepRatio" -pt "PrintTime" -ps "PrintStep" -Net "Netlist file name" -m "file name for errors"

REM Except input file, all other parameters are optional.
REM All file names should be enclosed by " or ' characters.
REM Command-line parameters:
  REM -i :  Followed by input schematic file or Script file(.script).
  REM -o :  Followed by output text (.txt) or binary (.smv) file.
  REM -g :  Run Simview after the simulation is complete.
  REM -t :  Followed by total time of the simulation.
  REM -s :  Followed by time step of the simulation.
  REM -DSED :  DSED (non-stiff) Solver. (DSIM only)
  REM -BDSED:  BDSED (stiff) Solver. (DSIM only)
  REM -rr :  Relative error. (DSIM only)
  REM -ar :  Absolute error. (DSIM only)
  REM -zr :  Absolute error for zero crossing detection. (DSIM only)
  REM -kt :  Enable Switching Transients Out. (DSIM only)
  REM -tv : Use variable time step. Followed by Ratio. SecondaryTimeStep = TimeStep / Ratio.
  REM -tc : Do not use variable time step.
  REM -pt : Followed by print time of the simulation.
  REM -ps : Followed by print step of the simulation.
  REM -v :  Followed by variable name and value. This parameter can be used multiple times.
       REM example:  -v "R1=1.5"  -v "R2=5"
  REM -m :  Followed by Text file for Error messages
  REM -K  or -K1 :  Set 'Save flag' in Simulation control.
  REM -K0 :  Remove 'Save flag' in Simulation control.
  REM -L or -L1 :  Set 'Load flag' in Simulation control. Continue from previous simulation result.
  REM -L0 :  Remove 'Load flag' in Simulation control. Starts simulation from beginning.
  REM -Net : Generate netlist file. Simulation will not run. Followed by optional Netlist file name.
  REM -NetXml : Generate XML netlist file. Simulation will not run. Followed by optional XML file name.
  REM -NetXmlU : Generate XML netlist file in UTF16 format. Simulation will not run. Followed by optional XML file name.
  REM -c :  Followed by input netlist file.
  REM -LT : Run LTspice simulation. (Requires Spice module)
  REM -SP  or -SPICE : Same as -LT. Run LTspice simulation. (Requires Spice module)
  REM -DSIM : Run DSIM simulation. (Requires DSIM module)
  REM -hw : Generate hardware code. (Requires SimCoder modules)
REM To run Script file, input file following -i switch must be a .script file. In case of script file, variables (-v switch) are passed to the script.
REM ///////////////////////////////////////////////
REM //              psimcmd return values:
REM /////////////////////////////
REM //              0: Success
REM //
REM //              Errors:
REM //              2:  Failed to run simulation or generate an XML file or generate Simcoder C code.
REM //              3:  Can not open input schematic file
REM //              4:  Input file is missing
REM //              10: unable to retrieve valid license.
REM //              -1: Failed to run script otherwise it returns the script return value or 0
REM ///////////////////////////////////////////////


@Pause

@Echo ON
PsimCmd.exe -i "L-C filter upstream link.script"

@Pause



	