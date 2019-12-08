# Written By: Duncan McConnell
# 12-07-19

IMAGE_PATH="images"

# Creates directory if directory does not exist
if [ ! -d "$IMAGE_PATH" ]; then
    mkdir $IMAGE_PATH
fi

# Downloads nasa picture and mv to images folder
python src/download.py
mv *.jpg $IMAGE_PATH