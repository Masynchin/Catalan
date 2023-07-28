# Catalan

Naive way for generating Catalan numbers sequence in Haskell

## How to run

Clone repo with `git`:

~~~shell
https://github.com/Masynchin/Catalan.git
cd Catalan
~~~

Compile and run with `ghc`:

~~~shell
ghc main.hs
./main
~~~

Amount of showed numbers defaults to 10. You can pass other amount as argument:

~~~shell
./main 15
~~~ 

Respectively, you can run it in Docker:

~~~shell
docker run --rm -it $(docker build -q .)
~~~

~~~shell
docker run --rm -it $(docker build -q .) 15
~~~