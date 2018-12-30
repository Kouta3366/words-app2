@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"D:\Ruby24-x64\bin\ruby.exe" "D:/r6/words-app2/vendor/bundle/ruby/2.4.0/bin/chromedriver-update" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"D:\Ruby24-x64\bin\ruby.exe" "%~dpn0" %*
