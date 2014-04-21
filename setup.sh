git branch | cut -c3- | grep -v master | xargs git checkout | docker build -t cardmagic/ruby:`sed -n '/\* /s///p'` .
