for i in 1 2 3 4 5
do
sysbench --test=fileio --file-test-mode=seqwr -file-block-size=64K --file-num=3000 --file-total-size=192000K --num-threads=4 --file-io-mode=sync --prepare >>res_fileio.txt
sysbench --test=fileio --file-test-mode=seqwr --file-block-size=64K --file-num=3000 --file-total-size=192000K --num-threads=4 --file-io-mode=sync --run >>res_fileio.txt
sysbench --test=fileio --file-test-mode=seqwr --file-block-size=64K --file-num=3000 --file-total-size=192000K --num-threads=4 --file-io-mode=sync --cleanup >>res_fileio.txt
done

for i in 1 2 3 4 5
do
sysbench --test=fileio --file-test-mode=seqrewr --file-block-size=64K --file-num=3000 --file-total-size=192000K --num-threads=4 --file-io-mode=sync --prepare >>res_fileio.txt
sysbench --test=fileio --file-test-mode=segrewr --file-block-size=64K --file-num=3000 --file-total-size=192000K --num-threads=4 --file-io-mode=sync --run >>res_fileio.txt
sysbench --test=fileio --file-test-mode=seqrewr --file-block-size=64K --file-num=3000 --file-total-size=192000K --num-threads=4 --file-io-mode=sync --cleanup >>res_fileio.txt
done

for i in 1 2 3 4 5
do
sysbench --test=fileio --file-test-mode=rndrw --file-block-size=64K --file-num=3000 -file-total-size=192000K --num-threads=4 --file-io-mode=sync --prepare >>res_fileio.txt
sysbench --test=fileio --file-test-mode=rndrw --file-block-size=64K --file-num=3000 --file-total-size=192000K --num-threads=4 --file-io-mode=sync --run >>res_fileio.txt
sysbench --test=fileio --file-test-mode=rndrw --file-block-size=64K --file-num=3000 --file-total-size=192000K --num-threads=4 --file-io-mode=sync --cleanup >>res_fileio.txt
done