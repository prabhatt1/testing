#! /bin/bash

search_dir=/root/drivers.qat.common.swfconfig/
echo "Choose one of the following:"

i=1;
for entry in "$search_dir"/*
do
  echo "$i.$entry"
  ((i++))
done

read dir1

while [[ $dir1 != "Archive" && $dir1 != "QAT" && $dir1 != "QAT20" && $dir1 != "QAT30" ]];
do
   echo "give valid option"
   read dir1
done
   
dir2=/root/drivers.qat.common.swfconfig/$dir1/LIN

for entry in "$dir2"/*
do
    echo "$entry"
done
    
echo "Select one of the following configs"
read sw_config 

dir3="/root/drivers.qat.common.swfconfig/$dir1/LIN/$sw_config"

if [ ! -d /root/git-sources ]; then
    mkdir /root/git-sources
else 
    echo "local repo already exists..skipping"
fi

cd "$HOME"/git-sources || { printf "cd failed, exiting\n" >&2;  return 1; }

while IFS== read -r f1 f2
do
  echo "$f1=====$f2"

  if [[ $f1 == API_BranchorTag ]];
  then
     if [ -d /root/git-sources/API ]; then
        echo "Removing already existed local repo"
        rm -r $HOME/git-sources/API
        mkdir $HOME/git-sources/API
     else
        mkdir $HOME/git-sources/API
     fi
     cd "$HOME"/git-sources/API || { printf "cd failed, exiting\n" >&2;  return 1; }
     git clone git@github.com:intel-innersource/drivers.qat.api.api.git
     cd "$HOME"/git-sources/API/drivers.qat.api.api || { printf "cd failed, exiting\n" >&2;  return 1; }

     git checkout $f2
  
  elif [[ $f1 == OSAL_USER_BranchorTag ]];
  then
     if [ -d /root/git-sources/OSAL ]; then
         echo "Removing already existed local repo"
         rm -r $HOME/git-sources/OSAL
         mkdir $HOME/git-sources/OSAL

     else
        mkdir $HOME/git-sources/OSAL
     fi
     cd "$HOME"/git-sources/OSAL || { printf "cd failed, exiting\n" >&2;  return 1; }
     git clone git@github.com:intel-innersource/drivers.qat.common.osal.git

     cd "$HOME"/git-sources/OSAL/drivers.qat.common.osal || { printf "cd failed, exiting\n" >&2;  return 1; }

     git checkout $f2
 
  elif [[ $f1 == CMD_USER_BranchorTag ]];
  then
     if [ -d /root/git-sources/USDM ]; then
         echo "Removing already existed local repo"
         rm -r $HOME/git-sources/USDM
         mkdir $HOME/git-sources/USDM

     else
        mkdir $HOME/git-sources/USDM
     fi
     cd "$HOME"/git-sources/USDM || { printf "cd failed, exiting\n" >&2;  return 1; }
     git clone git@github.com:intel-innersource/drivers.qat.common.usdm.git

     cd "$HOME"/git-sources/USDM/drivers.qat.common.usdm || { printf "cd failed, exiting\n" >&2;  return 1; }

     git checkout $f2
  
   elif [[ $f1 == BS_BranchorTag ]];
   then
     if [ -d /root/git-sources/BS ]; then
         echo "Removing already existed local repo"
         rm -r $HOME/git-sources/BS
         mkdir $HOME/git-sources/BS

     else
        mkdir $HOME/git-sources/BS
     fi
     cd "$HOME"/git-sources/BS || { printf "cd failed, exiting\n" >&2;  return 1; }
     git clone git@github.com:intel-innersource/drivers.qat.common.build-system.git

     cd "$HOME"/git-sources/BS/drivers.qat.common.build-system || { printf "cd failed, exiting\n" >&2;  return 1; }

     git checkout $f2
   
     elif [[ $f1 == ADF_CTL_BranchorTag ]];
   then
     if [ -d /root/git-sources/ADF_CTL ]; then
         echo "Removing already existed local repo"
         rm -r $HOME/git-sources/ADF_CTL
         mkdir $HOME/git-sources/ADF_CTL

     else
        mkdir $HOME/git-sources/ADF_CTL
     fi
     cd "$HOME"/git-sources/ADF_CTL || { printf "cd failed, exiting\n" >&2;  return 1; }
     git clone git@github.com:intel-innersource/drivers.qat.common.adf-ctl.git

     cd "$HOME"/git-sources/ADF_CTL/drivers.qat.common.adf-ctl || { printf "cd failed, exiting\n" >&2;  return 1; }

     git checkout $f2

      elif [[ $f1 == ADF_UPSTREAM_BranchorTag ]];
   then
     if [ -d /root/git-sources/ADF_UPSTREAM ]; then
         echo "Removing already existed local repo"
         rm -r $HOME/git-sources/ADF_UPSTREAM
         mkdir $HOME/git-sources/ADF_UPSTREAM

     else
        mkdir $HOME/git-sources/ADF_UPSTREAM
     fi
     cd "$HOME"/git-sources/ADF_UPSTREAM || { printf "cd failed, exiting\n" >&2;  return 1; }
     git clone git@github.com:intel-innersource/drivers.qat.common.adf.git

     cd "$HOME"/git-sources/ADF_UPSTREAM/drivers.qat.common.adf || { printf "cd failed, exiting\n" >&2;  return 1; }

     git checkout $f2
 
     elif [[ $f1 == SAL_BranchorTag ]];
   then
     if [ -d /root/git-sources/SAL ]; then
         echo "Removing already existed local repo"
         rm -r $HOME/git-sources/SAL
         mkdir $HOME/git-sources/SAL

     else
        mkdir $HOME/git-sources/SAL
     fi
     cd "$HOME"/git-sources/SAL || { printf "cd failed, exiting\n" >&2;  return 1; }
     git clone git@github.com:intel-innersource/drivers.qat.common.sal.git

     cd "$HOME"/git-sources/SAL/drivers.qat.common.sal || { printf "cd failed, exiting\n" >&2;  return 1; }

     git checkout $f2
 
     elif [[ $f1 == SAMPLE_USER_BranchorTag  ]];
   then
     if [ -d /root/git-sources/SAMPLE_USER ]; then
         echo "Removing already existed local repo"
         rm -r $HOME/git-sources/SAMPLE_USER
         mkdir $HOME/git-sources/SAMPLE_USER

     else
        mkdir $HOME/git-sources/SAMPLE_USER
     fi
     cd "$HOME"/git-sources/SAMPLE_USER || { printf "cd failed, exiting\n" >&2;  return 1; }
     git clone git@github.com:intel-innersource/drivers.qat.common.sample-code.git

     cd "$HOME"/git-sources/SAMPLE_USER/drivers.qat.common.sample-code || { printf "cd failed, exiting\n" >&2;  return 1; }

     git checkout $f2

  fi
done <"$dir3"

#BUILDING REPOSITORIES

#set ICP_ROOT
export ICP_ROOT=/root/git-sources

# adf
cd $ICP_ROOT/ADF_UPSTREAM/drivers.qat.common.adf/
make gen
make -j

# osal
cd $ICP_ROOT/OSAL/drivers.qat.common.osal/
make -j

# usdm
cd $ICP_ROOT/USDM/drivers.qat.common.usdm/
make
cp $ICP_ROOT/USDM/drivers.qat.common.usdm/libusdm_drv_s.so $ICP_ROOT/USDM/drivers.qat.common.usdm/libusdm_drv.a $ICP_ROOT/CRB_integ_modules/
cp $ICP_ROOT/USDM/drivers.qat.common.usdm/usdm_drv.ko $ICP_ROOT/CRB_integ_modules/

# adf_ctl
cd $ICP_ROOT/ADF_CTL/drivers.qat.common.adf-ctl/
make -j

# sal
cd $ICP_ROOT/SAL/drivers.qat.common.sal
make -j


