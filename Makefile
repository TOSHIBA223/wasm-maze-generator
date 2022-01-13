all: wasm_exec.js twistylittlepassages

wasm_exec.js: twistylittlepassages
	cp "$$(go env GOROOT)/misc/wasm/wasm_exec.js" $@

twistylittlepassages: main.go
	GOOS=js GOARCH=wasm go build .

clean:
	go clean
	rm -f wasm_exec.js
