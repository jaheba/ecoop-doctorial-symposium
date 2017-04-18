
TEXMFHOME="${SOFTDEV_HOME}/share/texmf"

main=proposal.tex


pdf: scaffold
	TEXMFHOME=${TEXMFHOME} pdflatex -output-directory build $(main)
	cp bib.bib build
	cd build; bibtex proposal
	cd ..
	TEXMFHOME=${TEXMFHOME} pdflatex -output-directory build $(main)
	TEXMFHOME=${TEXMFHOME} pdflatex -output-directory build $(main)

quick:
	TEXMFHOME=${TEXMFHOME} pdflatex -output-directory build $(main)	

scaffold:
	mkdir -p build
