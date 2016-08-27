node-packages.nix: node_modules/.bin/node2nix node-packages.json
	node_modules/.bin/node2nix -i node-packages.json \
		--include-peer-dependencies

node_modules/.bin/node2nix:
	npm install node2nix
