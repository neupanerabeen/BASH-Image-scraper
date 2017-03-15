lines=`wc -l $1|cut -d' ' -f1`

#echo "Creating necessary folders"
if [ ! -d splits ]; then
	mkdir splits
fi
if [ ! -d images ]; then
	mkdir images
fi
if [ ! -d logs ]; then
	mkdir logs
fi

#echo "removing if the folders contains"
rm -r images/*
rm -r logs/*
rm -r splits/*
# generating number of splits
num_of_splits=$(($lines/$2))
# echo $num_of_splits
split -dl $num_of_splits $1 splits/
for file in splits/*
do
	(sh get.sh $file &)
done
exit
