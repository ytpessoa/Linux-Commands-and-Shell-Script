#/bin/bash

HOSTNAME=$(cat /etc/hostname)
#HOSTNAME=$(hostname)

DATE=$(date)

TEMPOATIVIDADE=$(uptime -s)
# uptime -> último restart

KERNELVERSION=$(uname -r)

 CPUCORES=$(cat /proc/cpuinfo | grep "model name" | wc -l)
#cat /proc/cpuinfo | grep "model name"
	#model name	: Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz
	#model name	: Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz
	#model name	: Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz
	#model name	: Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz



 CPUMODEL=$(cat /proc/cpuinfo | grep "model name" | head -n1 | cut -d ":" -f2)
#CPUMODEL=$(cat /proc/cpuinfo | grep "model name" | uniq | cut -d ":" -f2)


MEMSIZE_KB=$(cat /proc/meminfo | grep "MemTotal" | tr -d ' ' | cut -d ":" -f2 | tr -d kB)
MEMSIZE_MB=$( expr $MEMSIZE_KB / 1024 )


PARTITIONS=$( df -h | egrep -v '(tmpfs|udev|loop)' )
# df -h
# Filesystem      Size  Used Avail Use% Mounted on
# df -> Exibir as partições
# udev            3,9G     0  3,9G   0% /dev
# /dev/sda1       110G   49G   56G  47% /
# tmpfs           5,0M  4,0K  5,0M   1% /run/lock
# /dev/loop1       98M   98M     0 100% /snap/core/9289


echo "============================================"
echo "Relatorio da maquina $HOSTNAME"
echo "Data/Hora: $DATE"
echo "============================================"
echo""
echo "Maquina ativada desde: $TEMPOATIVIDADE"
echo""
echo "Versão do Kernel: $KERNELVERSION"
echo""
echo "CPUs:"
echo "Quantidade de CPUs/Core: $CPUCORES"
echo "Quantidade de CPUs/Core: $CPUMODEL"
echo ""
echo "Memória Total: $MEMSIZE_MB MB"

echo""

echo "Partições:"
echo "$PARTITIONS"
echo ""
