all: build

clean:
	@rm -rf .build/

build: clean
	swift build

test: clean
	swift test