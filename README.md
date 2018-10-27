# BASH-Image-scraper


*******************
***Image crawler***
*******************

[Insttructions]
1. Go to terminal
2. Go to the crawl.sh file path
3. Type sh crawl.sh [filename.csv] [number of splits to create]


[Parameters]

[filename.csv]: this file is the csv format file. To know the file format, read the [Input file format] below.
[number of splits to create]: this is the number you pass to create fragments of your input file


[Input file format]
Input file [filename.csv] contains two columns. First containing  full url path of image and the next containing the filename you want to assign to the downloaded image.

_____________________
|url   |  image name|
---------------------

Note: do not include headers in input file!

[Output format]
Output contains three directories of which two directories are of your concern. Directories are images, logs and splits. Images contains your desired images. If, in case, url can't obtain content, you can know that url inside logs. The logs can have at most the split numbers of files. The error are generated according to the splits created. 

Splits contains the fragmented files splited from yout input csv. This is for multiprocessing. The splits are generated according to the parameter you pass on terminal 

****************************************************
[neupanerabeen]
