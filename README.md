
# AutomateStorwizeFlashCopy
Script to automate Storage IBM Storwize flash Copy process
need to create before:
- user with flash copy permission and allow to this user access through ssh public key
- Create a consistency group and volumes relationship

You can get consistency group ID with this command, in storwize CLI:

IBM_FlashSystem:Cluster_V9000P:superuser>lsfcconsistgrp

> id name                 status  start_time 2  XXX                 
> empty 3  XXX                  empty 4  XXX                  copying
> 200506035630 5  XXX                  empty 6  XXX                 
> empty 7  XXX                  empty 8  XXX                  empty 9 
> XXX                  empty 10 XXX                  empty 11 XXX       
> empty 12 XXX                  copying 191108101515
> Written with [StackEdit](https://stackedit.io/).

