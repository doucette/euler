-module(euler0003).
-export([start/0]).

start() ->
    io:format("~w~n", [factor(600851475143)]),
    erlang:halt().

factor(N) ->
    factor(2, N).

factor(Divisor, 1) ->
    Divisor;
factor(Divisor, N) when N rem Divisor == 0 ->
    factor(Divisor, N div Divisor);
factor(Divisor, N) ->
    factor(Divisor + 1, N).
