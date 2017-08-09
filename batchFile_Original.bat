C:\BCI2000\BCI2000v3.6.beta.R5570\BCI2000.x64.extensions.bundled\prog\BCI2000Shell %0 %* #! && exit /b 0 || exit /b 1 

Change directory $BCI2000LAUNCHDIR
Show window; Set title ${Extract file base $0}
Reset system
Startup system localhost
Start executable SignalGenerator --local
Start executable ARSignalProcessing --local
Start executable CursorTask --local
Wait for Connected
Load parameterfile "C:\Users\ly000006\Desktop\TodayTest\DownFtERD18Hz_UpBH.prm"
Echo Please enter a subject name:
Set parameter SubjectName ${Read line}
 