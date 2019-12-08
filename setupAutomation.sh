
crontab -l | { cat; echo "00 21 * * * $PWD/worker.sh"; } | crontab -

crontab -l