#!/bin/bash
while read -r line
do
	name="$line"
	echo -n $2
	echo $name | tr -s " " | tr -s "	" | tr "	" " " | sed "s/ /hovado/g" | sed "s/hovado/$3/" | sed "s/hovado/$4/" | sed "s/hovado/$5/" | sed "s/hovado/$6/" | sed "s/hovado/$7/" | sed "s/hovado/$8/" | sed "s/hovado/$9/" | sed "s/hovado/${10}/" | sed "s/hovado/${11}/"  | sed "s/hovado/${12}/" | sed "s/hovado/${13}/" | sed "s/hovado/${14}/" | sed "s/hovado/${15}/" | sed "s/hovado/${16}/" | sed "s/hovado/${17}/" | sed "s/hovado/${18}/" | sed "s/hovado/${19}/"
done < $1

#./pesa.sh tab '\num{' '} \& \\uhel{' '}{' '}{' '} \& \\uhel{' '}{' '}{' '} \& \\num{' '} \& \\uhel{' '}{' '}{' '} \& \\uhel{' '}{' '}{' '} \& \\num{' '} \\\\ \%'
