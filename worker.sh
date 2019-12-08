# Written By: Duncan McConnell
# 12-07-19

IMAGE_PATH="images"

# Creates directory if directory does not exist
if [ ! -d "$1/$IMAGE_PATH" ]; then
    mkdir $1/$IMAGE_PATH
fi

# Downloads nasa picture and mv to images folder
python $1/src/download.py $1
mv $1/*.jpg $1/$IMAGE_PATH