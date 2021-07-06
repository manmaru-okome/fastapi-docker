#!/bin/bash

# pyproject.tomlをつくる
# これだとpyproject.tomlがrootユーザーでつくられてしまう
docker run -it --rm --name tmp -v $(pwd)/app:/usr/src python:3.8.9-slim sh -c "cd /usr/src && pip install poetry && poetry init"