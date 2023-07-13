#!/bin/bash
cd app/
cd kopia-0.13.0-linux-x64/

/usr/bin/expect <<EOD
spawn ./kopia repository create s3 --bucket=clara-main --access-key=Q1L8AYIYDJS75A08EL1T --secret-access-key=QVDquJAVQaFd0B1KYz7xTy9pOlRWPixJxA4Lqg4b --endpoint=cellar-c2.services.clever-cloud.com
expect "Enter password to create new repository: "
send "clara"
expect "Re-enter password for verification: "
send "clara"
expect eof
EOD

./kopia repository create s3 --bucket=clara-main --access-key=Q1L8AYIYDJS75A08EL1T --secret-access-key=QVDquJAVQaFd0B1KYz7xTy9pOlRWPixJxA4Lqg4b --endpoint=cellar-c2.services.clever-cloud.com


#https://forum.hardware.fr/hfr/Programmation/Shell-Batch/saisies-clavier-automatiquement-sujet_85529_1.htm