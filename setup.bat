@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install chocolatey-core.extension;
choco install chocolateygui;
choco install chocolatey-windowsupdate.extension;
choco install putty.install;
choco install keepass.install;
choco install openssh;
choco install git.install;
choco install clink;
choco install wincommandpaste;
choco install conemu;
choco install tortoisegit;
choco install visualstudiocode
choco install notepadplusplus.install
choco install virtualbox
choco install vboxvmservice
choco install docker-toolbox
choco install eclipse
choco install jdk8
choco install maven
choco install jmeter
choco install redis-64
choco install chocolateyexplorer
choco install golang
