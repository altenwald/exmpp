TARGETS	=	include/internal/exmpp_known_nss.hrl src/core/exmpp_known_nss.erl \
	include/internal/exmpp_known_elems.hrl src/core/exmpp_known_elems.erl \
	include/internal/exmpp_known_attrs.hrl src/core/exmpp_known_attrs.erl

compile: $(TARGETS)

include/internal/exmpp_known_%.hrl: include/internal/exmpp_known_%.in
	./include/internal/exmpp_known_$*.hrl.es $< > $@

src/core/exmpp_known_%.erl: include/internal/exmpp_known_%.in
	./src/core/exmpp_known_$*.erl.es $< > $@

clean:
	$(RM) $(TARGETS)
