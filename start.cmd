@ECHO OFF

REM Put config files in the right place
if not exist "C:\_data\" mkdir C:\_data
if not exist "C:\_data\Config" (
    robocopy C:\GameData\Config C:\_data\Config /E /MOVE
    mklink /D C:\GameData\Config C:\_data\Config
) ELSE (
    echo Config is already linked.
)
if not exist "C:\_data\Tracks" (
    robocopy C:\GameData\Tracks C:\_data\Tracks /E /MOVE
    mklink /D C:\GameData\Tracks C:\_data\Tracks
) ELSE (
    echo Tracks are already linked.
)
if not exist "C:\_data\Logs" (
    mkdir C:\_data\Logs
    mklink /D C:\Logs C:\_data\Logs
) ELSE (
    echo Logs are already linked.
)

REM Start up the server
TrackmaniaServer.exe %*