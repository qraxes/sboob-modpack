@echo off
pushd %appdata%\PolyMC\instances
	if exist %appdata%\PolyMC\instances\TheJ-Modpack-Client (
		pushd TheJ-Modpack-Client
			git pull
		popd
	) else (
		git clone https://git.badcoder.dev/rwf93/TheJ-Modpack-Client
	
		pushd TheJ-Modpack-Client
			copy instance.default.cfg instance.cfg
		popd
	)
popd

timeout /t 5 > nul