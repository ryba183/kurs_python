#!/biin/bash

for pl in /tmp/* ;
do
	echo $pl;
	echo " <a href="'"'$pl'"'" >"$pl"</a>";

done
