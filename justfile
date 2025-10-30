# Build and push Docker image
release-image: build-image push-image

# Build and run Docker image for testing
try-image: build-image run-image

# Build the Docker image
build-image:
	docker build -t treewalkr/dotfiles .

# Run the Docker container
run-image:
	docker run -it treewalkr/dotfiles:latest

# Push the Docker image to registry
push-image:
	docker push treewalkr/dotfiles:latest

# Clean generated files
clean:
	git clean -Xf