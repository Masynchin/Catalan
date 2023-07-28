FROM haskell:9.4.5-slim-buster AS build

COPY Main.hs .

RUN ghc Main.hs

FROM debian:buster-slim AS run

COPY --from=build Main .

ENTRYPOINT [ "./Main" ]
