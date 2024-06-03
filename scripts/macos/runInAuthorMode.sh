#!/bin/bash

echo "Running jekyll in author mode http://localhost:4000"
docker run -ti --rm -p 4000:4000 -v .:/srv/jekyll jekyll/jekyll /bin/bash -c "bundle install && bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload"