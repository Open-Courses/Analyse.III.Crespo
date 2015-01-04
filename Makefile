SRC_DIR	= src
NAME	= Analyse-Differentiabilite
SRC		= $(NAME).tex

$(NAME):
	cd $(SRC_DIR) && pdflatex -output-directory ../ $(SRC)

zip: fclean $(NAME)
	$(MAKE) $(NAME)
	$(MAKE) clean
	zip -r $(NAME).zip . -x *.git*

clean:
	rm -f $(NAME).aux $(NAME).toc $(NAME).log $(NAME).tex.backup $(NAME).zip

fclean: clean
	rm -f $(NAME).pdf
