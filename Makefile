SRC_DIR	= src
NAME	= Analyse.III.Crespo
SRC		= $(NAME).tex

$(NAME):
	cd src && pdflatex -output-directory ../ "\def\outputproof{0} \input{$(SRC)}"
	cd src && pdflatex -output-directory ../ "\def\outputproof{0} \input{$(SRC)}"

noproof:
	cd src && pdflatex -output-directory ../ $(SRC)
	cd src && pdflatex -output-directory ../ $(SRC)

zip: fclean noproof
	$(MAKE) clean
	zip -r $(NAME).zip . -x *.git*

clean:
	rm -f $(NAME).aux $(NAME).toc $(NAME).log $(NAME).tex.backup $(NAME).zip $(NAME).out

fclean: clean
	rm -f $(NAME).pdf

re: fclean $(NAME)
