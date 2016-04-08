sh ./createVolumeFolders.sh
sh ./cloneRepo.sh

sh ./createDbImage.sh
sh ./createAppImage.sh

sh ./runDbContainer.sh
sh ./runAppContainer.sh
