rm -f *.log

pm2 delete test -s
pm2 flush -s
pm2 startOrRestart pm2_1.json -s
pm2 startOrRestart pm2_2.json -s
echo 'Test 1: startOrRestart and startOrRestart'
cat *.log

echo '--'

rm -f *.log

pm2 delete test -s
pm2 flush -s
pm2 startOrRestart pm2_1.json -s
pm2 restart pm2_2.json -s
echo 'Test 2: startOrRestart and restart'
cat *.log