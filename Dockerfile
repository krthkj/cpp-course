FROM cppbox:01

WORKDIR /usr/src/cpp-course/
COPY . .

WORKDIR /usr/src/cpp-course/build
RUN cmake .. && make -j "$(nproc)"
