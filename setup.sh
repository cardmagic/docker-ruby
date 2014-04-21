git branch | cut -c3- | grep -v master | xargs -n1 -I_branch -- bash -c 'git checkout _branch && docker build -t cardmagic/ruby:`sed -n "/\* /s///p"` .'
