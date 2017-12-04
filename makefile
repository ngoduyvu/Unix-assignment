all: README.md

README.md: guessinggame.sh
        touch README.md
        echo "# Coursera Unix-assignment\n" >> README.md
        echo "* Author: Ngo Duy Vu\n" >> README.md
        echo "* Date: " >> README.md
        data -u >> README.md

clean:
        rm README.md


