-module(euler0007).
-export([start/0]).

start() ->
    io:format("~w~n", [nthPrime(10001)]),
    erlang:halt().

nthPrime(N) ->
    nthPrime([2], 1,  3, N).

nthPrime(Primes, Count, _Next, Max) when Count == Max ->
    lists:last(Primes);
nthPrime(Primes, Count, Next, Max) ->
    case isPrime(Next, Primes) of
        true ->
            nthPrime(Primes ++ [Next], Count + 1, Next + 2, Max);
        false ->
            nthPrime(Primes, Count, Next + 2, Max)
    end.

isPrime(Number, [H|T]) when H * H =< Number ->
    case Number rem H of
        0 ->
            false;
        _ ->
            isPrime(Number, T)
    end;
isPrime(_Number, _Primes) ->
    true.
