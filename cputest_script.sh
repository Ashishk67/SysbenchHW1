for i in 1 2 3 4 5
do
sysbench --test=cpu --cpu-max-prime=28000 run >>res_cpu.txt
done
for i in 1 2 3 4 5
do
sysbench --test=cpu --cpu-max-prime=30000 run >>res_cpu.txt
done
for i in 1 2 3 4 5
do
sysbench --test=cpu --cpu-max-prime=35000 run >>res_cpu.txt
done