 #!/bin/bash
 pacman -Qe | cut -f 1 -d ' ' | awk '{o=o s ""$0""; s=" "} END{print "sudo pacman " o }' >~/bin/pacman_restore.sh
 chmod +x ~/bin/pacman_restore.sh
