build: 
	nix-shell --pure -p cabal2nix --run "cabal2nix ." > celestial.nix
	nix-build release.nix


run: build
	./result/bin/celestial

environment: build
	nix-shell --pure release.nix

clean: 
	rm -rf result
	rm -f celestial.nix

rebuild: clean build
