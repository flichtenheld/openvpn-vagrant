Write-Host "Installing Visual Studio build tools"
& choco.exe install -y git --params "/GitAndUnixToolsOnPath"
& choco.exe install -y visualstudio2019buildtools
& choco.exe install -y visualstudio2019-workload-vctools --params "--add Microsoft.VisualStudio.Component.UWP.VC.ARM64 --add Microsoft.VisualStudio.Component.VC.Tools.ARM64 --add Microsoft.VisualStudio.Component.VC.ATL.Spectre --add Microsoft.VisualStudio.Component.VC.ATLMFC.Spectre --add Microsoft.VisualStudio.Component.VC.ATL.ARM64.Spectre --add Microsoft.VisualStudio.Component.VC.MFC.ARM64.Spectre --add Microsoft.VisualStudio.Component.VC.Runtimes.ARM64.Spectre --add Microsoft.VisualStudio.Component.VC.Runtimes.x86.x64.Spectre --quiet"

Write-Host "Rebooting to finish Visual Studio 2019 build tools installation"
shutdown /r /t 10
