#!/bin/bash
perl /root/wf-scc2git/bin/numberFasta.pl /mnt/scc2git/exp/mafft/140/934/967/4/iii > `basename /mnt/scc2git/exp/mafft/140/934/967/4/iii`.fastaNumbered
/usr/local/bin/mafft `basename /mnt/scc2git/exp/mafft/140/934/967/4/iii`.fastaNumbered > `basename /mnt/scc2git/exp/mafft/140/934/967/4/iii`.mafft

python /root/wf-scc2git/bin/extractor.py `basename /mnt/scc2git/exp/mafft/140/934/967/4/iii` PA_Mafft ERelation.txt
