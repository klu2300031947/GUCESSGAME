# GUCESSGAME

# Makefile to generate README.md and build the project

README.md: guessinggame.sh
    echo "# Guessing Game" > README.md
    echo "Date and time make was run: $(date)" >> README.md
    echo "Number of lines in guessinggame.sh: $(wc -l < guessinggame.sh)" >> README.md
