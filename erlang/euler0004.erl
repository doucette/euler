-module(euler0004).
-export([start/0]).

start() ->
    io:format("~w~n", [maxPal({100,999})]),
    erlang:halt().

maxPal({L, H}) ->
    Pals = [ X * Y || X <- lists:seq(L, H),
                      Y <- lists:seq(X, H),
                      isPal(X * Y) ],
    lists:max(Pals).

isPal(N) ->
    S = integer_to_list(N),
    S == lists:reverse(S).
