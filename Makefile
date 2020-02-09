FILE=drmarysmonkey

open: $(FILE).pdf
	open $?
$(FILE).pdf: $(FILE).ps
	ps2pdf $? $@

$(FILE).ps: $(FILE).dot
	dot -Tps2 -Gsize=3800,1500 $? -o $@
