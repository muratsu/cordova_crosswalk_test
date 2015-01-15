Remove-Item .\app\* -Force -Recurse -ea si
Remove-Item .\cordova-crosswalk-engine\* -Force -Recurse -ea si
iex 'cordova create app';
iex 'git clone https://github.com/muratsu/cordova-crosswalk-engine.git'
cd 'cordova-crosswalk-engine'
iex '.\fetch_libs.bat'
cd '..\app';
iex 'cordova platform add android@https://git-wip-us.apache.org/repos/asf?p=cordova-android.git`;a=snapshot`;h=4.0.x`;sf=tgz'
iex 'cordova plugin add ..\cordova-crosswalk-engine';
iex 'cordova build -- --minSdkVersion=14';
iex 'cordova emulate --nobuild';