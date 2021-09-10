html:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::bs4_book", clean = FALSE)'
	cp -fvr _main* _book/

clean:
	Rscript -e "bookdown::clean_book(TRUE)"
	rm -fvr *.log Rplots.pdf _bookdown_files land.sqlite3

cleaner:
	make clean && rm -fvr rsconnect
	rm -frv *.aux *.out  *.toc # Latex output
	rm -fvr *.html # rogue html files
	rm -fvr *utf8.md # rogue md files

