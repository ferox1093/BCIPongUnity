call Assets\BCI2000\prog\BCI2000Shell %0 %* #! && exit /b 0 || exit /b 1 

Change directory $BCI2000LAUNCHDIR
Show window; Set title ${Extract file base $0}
Reset system
Startup system localhost
Start executable FilePlayback --local
Start executable ARSignalProcessing --local
Start executable CursorTask --local
Wait for Connected
Load parameterfile "..\ParameterFiles\Pong\Ft_ERD18Hz_2D.prm"
Echo Please enter subject ID:
Set parameter SubjectName ${Read line}
Echo Normalizer offsets:
Set parameter NormalizerOffsets ${Read line}
Echo Normalizer gains:
Set parameter NormalizerGains ${Read line}