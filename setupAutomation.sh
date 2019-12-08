
crontab -l | grep -v 'worker.sh'  | crontab -
crontab -l | { cat; echo "40 21 * * * $PWD/worker.sh $PWD"; } | crontab -

crontab -l