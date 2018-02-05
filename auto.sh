gcc "${PWD##*/}".c -w

n="$(($1))"

for((i=1;i<=n;i++)) 
	do
		a.out <public0$i.in>    my_result0$i.output
		echo ----------------------------------------
		diff   public0$i.output my_result0$i.output
	done

rm -f my_result*
