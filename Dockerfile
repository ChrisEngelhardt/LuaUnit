FROM nickblah/lua:5-luarocks
WORKDIR /app/unit_tests

RUN luarocks install luaunit

ENTRYPOINT["/usr/local/bin/lua", "*.lua", "-o", "tap"]