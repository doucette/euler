-module(euler0002).
-export([start/0]).

start() ->
    io:format("~w~n", [sumEvenFibsTo(4000000)]),
    erlang:halt().

sumEvenFibsTo(N) ->
    sumEvenFibsTo(0, 0, 1, N).

sumEvenFibsTo(Sum, Current, _Next, N) when Current > N ->
    Sum;
sumEvenFibsTo(Sum, Current, Next, N) when Current rem 2 == 0 ->
    sumEvenFibsTo(Sum + Current, Next, Current + Next, N);
sumEvenFibsTo(Sum, Current, Next, N) ->
    sumEvenFibsTo(Sum, Next, Current + Next, N).
