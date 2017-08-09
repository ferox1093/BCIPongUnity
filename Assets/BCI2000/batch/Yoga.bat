C:\Users\BME_HeLab\Documents\GitHub\BCI2000_Unity\Assets\BCI2000\prog\BCI2000Shell %0 %* #! && exit /b 0 || exit /b 1 

Change directory $BCI2000LAUNCHDIR
Show window; Set title ${Extract file base $0}
Reset system
Startup system localhost
Start executable SignalGenerator --local
Start executable SpectralSignalProcessing --local
Start executable CursorTask --local
Wait for Connected
Load parameterfile "C:/Users/BME_HeLab/Documents/GitHub/BCI2000_Unity/Chris.prm"
Echo Please enter a subject name:
Set parameter SubjectName ${Read line}
 