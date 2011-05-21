-module(euler0001).
-export([start/0]).

start() ->
    Max = 999,
    By3 = sets:from_list(lists:seq(3, Max, 3)),
    By5 = sets:from_list(lists:seq(5, Max, 5)),
    Sum = lists:sum(sets:to_list(sets:union(By3, By5))),
    io:format("~w~n", [Sum]),
    erlang:halt().
