filename="$1"
# log_file_name=$(echo $1|cut -d. -f1)_error.csv
log_file_name=$(echo $1|cut -d. -f1|cut -d/ -f2)_error.csv
while read -r line
do
	url=$(echo $line|cut -d, -f1)
	image=$(echo $line|cut -d, -f2)
	file_name=$(echo $image | sed 's/ /\\ /g')

	wget -O images/$image $url
	if [[ $? -ne 0 ]]; then
		echo "wget failed"
		echo "$url,$image,Not Done">>logs/$log_file_name
	fi

done < "$filename"
exit


