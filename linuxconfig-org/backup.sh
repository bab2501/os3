#!/bin/bash
#Author: Dhr. ing. B.A. Blaauwgeers
# C: linuxconfig.org
# T: 2) Simple Backup bash shell script
# T: 3) Variables

OF=myhome_directory_$(date +%Y%m%d).tar.gz
tar -czf $OF /home/klaas/os3/linuxconfig-org
