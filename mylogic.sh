#! /bin/bash

array=(pts sde spb)

echo ${array[@]}

for i in ${array[@]}; do
    echo $i;
    if [ $i = pts ]; then
	echo 'inside PTS'
        sed 's/pts.*ip: [0-9.]* }/ip: 1.1.1.1/' stack.yml
    elif [$i = sde ]; then
        echo 'inside SDE'
        sed 's/sde.*ip: [0-9.]* }/ip: 2.2.2.2/' stack.yml
    else 
        echo 'inside SPB'
        sed 's/spb.*ip: [0-9.]* }/ip: 3.3.3.3/' stack.yml
    fi
done
