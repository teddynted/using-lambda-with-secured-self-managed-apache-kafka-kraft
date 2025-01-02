build:
	echo "Building lambda binaries"
	env GOOS=linux GOARCH=arm64 go build -o build/lambda/bootstrap main.go

zip:
	zip -j build/lambda.zip build/lambda/bootstrap