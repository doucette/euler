-module(euler0005).
-export([start/0]).

start() ->
    io:format("~w~n", [lcm(lists:seq(1, 20))]),
    erlang:halt().

lcm(Numbers) ->
    lcm(Numbers, 1).

lcm([], Result) ->
    Result;
lcm([H|T], Result) ->
    Factor = H div gcd(H, Result),
    lcm(T, Result * Factor).

gcd(A, B) ->
    if
        B == 0 ->
            A;
        B > A ->
            gcd(B, A);
        A rem 2 == 0 andalso B rem 2 == 0 ->
            2 * gcd(A div 2, B div 2);
        A rem 2 == 0 ->
            gcd(A div 2, B);
        B rem 2 == 0 ->
            gcd(A, B div 2);
        true ->
            gcd((A - B) div 2, B)
    end.
