-module(euler0006).
-export([start/0]).

start() ->
    Range = lists:seq(1, 100),
    SumOfRange = lists:sum(Range),
    SquareOfSum = SumOfRange * SumOfRange,
    SumOfSquares = lists:foldl(fun(X, Sum) -> X * X + Sum end, 0, Range),
    io:format("~w~n", [SquareOfSum - SumOfSquares]),
    erlang:halt().
