all: test

clean:
	@rm -rfv .build/
	@rm -rfv .vscode/

build: clean
	swift build

test: build
	swift test
