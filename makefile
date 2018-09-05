README.md:
	touch README.md
	echo "# Title: Guessing Files Game v.1.1" >> README.md
	echo -n "## Generated on: " >> README.md
	date >> README.md
	echo -n "## Lines of code in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
