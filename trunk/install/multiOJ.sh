function judge_round(){

  for config in `sudo find -O2  "$1" -maxdepth 4 -name judge.conf`
  do
     etc=`dirname "$config"`
     home=`dirname "$etc"`
     sudo judgeonce "$home" debug 1
     sleep 1
  done
}
while [ 1 ]
do
        judge_round $1
        sleep 2
done
