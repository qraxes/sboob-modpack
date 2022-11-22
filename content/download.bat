@echo off
setlocal ENABLEDELAYEDEXPANSION

SET mypath=%~f0

color a
echo hacking the mainframe

pushd %appdata%\PolyMC\instances
	if exist sboob-modpack (
		pushd sboob-modpack

			:: Im going to fucking lose it
			git pull
			move /Y .\content\download.bat %mypath%
		popd
	) else (
		git clone https://github.com/qraxes/sboob-modpack

		pushd sboob-modpack
			copy instance.default.cfg instance.cfg
			copy mmc-pack.default.json mmc-pack.json

			move /Y .\content\download.bat %mypath%
		popd
	)
popd

timeout /t 5 > nul