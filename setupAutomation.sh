CMDVPIP="$(command -v pip)"
#CMDVPIP=""

if [ "$CMDVPIP" = "" ]; then
    sudo easy_install pip
fi
pip install requests

MINUTES=$(date -v +5M +"%M")
HOUR=$(date +"%H")

crontab -l | grep -v 'worker.sh'  | crontab -
crontab -l | { cat; echo "$MINUTES $HOUR * * * $PWD/worker.sh $PWD"; } | crontab -

crontab -l