#
# Perf
#

function perf {

	RUNS=10
	times=()
	sum_time=0

	for i in {1..$RUNS}; do
		time=`curl -s -w "%{time_total}\n" -o /dev/null "$1"`
		times+=($time)
		printf '     %.3f\n' "$time"
	done

	for time in $times; do
		sum_time="$(($sum_time + $time))";
	done

	avg=$(($sum_time/$RUNS))

	echo '     -----'
	printf "Avg: %.3f\n" $avg

}