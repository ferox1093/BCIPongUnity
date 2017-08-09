call Assets\BCI2000\prog\BCI2000Shell %0 %* #! && exit /b 0 || exit /b 1 

Change directory $BCI2000LAUNCHDIR
Show window; Set title ${Extract file base $0}
Reset system
Startup system localhost
Start executable FilePlayback --local
Start executable ARSignalProcessing --local
Start executable CursorTask --local
Wait for Connected
Load parameterfile "..\ParameterFiles\Pong\DownFtERD18Hz_UpBH_1D.prm"
Echo Please enter a subject name:
Set parameter SubjectName ${Read line}