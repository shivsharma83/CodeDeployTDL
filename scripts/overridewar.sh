#!/bin/bash
cd /tmp
aws s3 cp "s3://ewe-softwares/builds/git@ewegithub.sb.karmalab.net:EWE/taas-hotels-dataloader-service.git/d95c7802406a3383ddf63f51f197e9636578c9c5/taas-hotels-dataloader-service.war" .
cp /opt/apps/taas-hotels-dataloader/taas-hotels-dataloader-service.war /opt/apps/taas-hotels-dataloader/taas-hotels-dataloader-service.war.old
mv taas-hotels-dataloader-service.war /opt/apps/taas-hotels-dataloader/taas-hotels-dataloader-service.war
if [ $? -eq 0 ]; then
   echo OK
else
  mv /opt/apps/taas-hotels-dataloader/taas-hotels-dataloader-service.war.old /opt/apps/taas-hotels-dataloader/taas-hotels-dataloader-service.war 
fi

