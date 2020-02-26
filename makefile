all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench course assignment" > README.md
	echo "" >>README.md
	echo "*by Johns Hopkins University on [coursera.org](https://www.coursera.org/)* " >> README.md
	echo "" >> README.md
	echo "**Description** : make a program called *guessing_game.sh*. "
	echo "" >> README.md
	echo -n "*Create date* : " >> README.md
	date >> README.md
	echo "" >> README.md
	echo -n "**Number of lines in guessinggame.sh:** ">> README.md
	grep -c '' guessinggame.sh >> README.md
	
clean:
	rm README.md