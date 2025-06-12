MAIN = resume
LATEX = pdflatex
LATEX_FLAGS = -interaction=nonstopmode -halt-on-error
AUXFILES = *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk

.PHONY: all clean

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex
	# Run a second time if needed (e.g., for TOC/LOF/LOT)
	@if grep -q 'Rerun to get' $(MAIN).log; then \
		echo "Re-running pdflatex for references/table of contents..."; \
		$(LATEX) $(LATEX_FLAGS) $(MAIN).tex; \
	fi

clean:
	rm -f $(AUXFILES) $(MAIN).pdf
