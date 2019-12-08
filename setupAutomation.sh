CMDVPIP="$(command -v pip)"

if [ -d "$CMDVPIP" ]; then
    sudo easy_install pip
fi
pip install requests

MINUTES=$(date -v +5M +"%M")

crontab -l | grep -v 'worker.sh'  | crontab -
crontab -l | { cat; echo "$MINUTES 21 * * * $PWD/worker.sh $PWD"; } | crontab -

crontab -l