git branch | xargs git checkout | docker build -t cardmagic/ruby:`sed -n '/\* /s///p'` .
