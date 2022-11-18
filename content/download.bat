@echo off
pushd %appdata%\PolyMC\instances
	if exist %appdata%\PolyMC\instances\sboob-modpack (
		pushd sboob-modpack
			git pull
		popd
	) else (
		git clone https://git.badcoder.dev/rwf93/sboob-modpack
	
		pushd sboob-modpack
			copy instance.default.cfg instance.cfg
		popd
	)
popd

timeout /t 5 > nul