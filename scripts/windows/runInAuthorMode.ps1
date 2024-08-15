# Define the port and volume mappings
$portMapping = "4000:4000"
$volumeMapping = "${PWD}:/srv/jekyll"

# Define the Docker image
$image = "jekyll/jekyll"

# Define the Jekyll command
$jekyllCommand = "bundle install && bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload"

# Print message
Write-Output "Running Jekyll in author mode at http://localhost:4000"

# Run the Docker container
docker run -ti --rm -p $portMapping -v $volumeMapping $image /bin/bash -c $jekyllCommand
