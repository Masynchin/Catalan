FROM haskell:9.4.5-slim-buster AS build

COPY main.hs .

RUN ghc main.hs

FROM debian:buster-slim AS run

COPY --from=build main .

ENTRYPOINT [ "./main" ]
