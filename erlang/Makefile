OBJECTS=$(basename $(wildcard *.erl))

.PHONY: clean $(addsuffix .test,$(OBJECTS))

$(addsuffix .beam,$(OBJECTS)): %.beam: %.erl
	erlc $^

$(addsuffix .test,$(OBJECTS)): %.test: %.beam
	@erl -noshell -run $(basename $^) start

clean:
	-rm $(addsuffix .beam,$(OBJECTS)) erl_crash.dump 2>/dev/null || true
