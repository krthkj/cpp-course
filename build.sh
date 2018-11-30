#!/bin/bash
docker image rm -f cpp-course:latest > /dev/null
docker build --rm --no-cache -t cpp-course:latest . \
&& docker history cpp-course:latest | head -n2 \
&& docker run -ti  cpp-course:latest ./cpp_test

