git branch | cut -c3- | grep -v master | xargs -n 1 git checkout | docker build -t cardmagic/ruby:`sed -n '/\* /s///p'` .
