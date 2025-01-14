# Installing Ester with the 4DSTAR SDK

## Introduction

In 4D-STAR, we strive to make our software widely accessible. To achieve this goal, simplifying the installation process is key. Inspired by the MESA installation approach, we aim to streamline the setup of Ester by creating a Software Development Kit (SDK) that packages all the necessary libraries for compilation into a single bundle. Given the interest in integrating MESA functionality within Ester, it makes sense to compile both with the same SDK, hence the idea of extending the already existing MESA SDK. 

Currently, the 4D-STAR SDK extends the MESA SDK by including cmake, CBLAS, SWIG, and the C++ API of HDF-5. This repo was made to test the 4DSTAR SDK. 


## Pre-requisites

The following assummes that `git`, `curl`, `make` and `tar` exist in your system. For example in Ubuntu you can install them with:

```
apt install git curl make tar
```

You will also need Python3 with the NumPy and Matplotlib libraries, as these are not provided by the SDK. You can install Python either using your package manager or conda/mamba. For example in Ubuntu

```
apt install python3 python3-dev python3-numpy python3-matplotlib
```

or with conda

```
conda create -n ester_env python=3.12 numpy matplotlib -c conda-forge
conda activate ester_env
```

## Installing Ester

Clone or download this repository, open a bash shell and then run the script

```
./installEsterWithSDK.sh
```

which will

1. Download and initialize the SDK
1. Clone Ester, check the `evolution` branch and patch it to make it fully compatible with the SDK
1. Compile and install Ester 
1. Execute `star1d` and `star_evol`

If no errors are encountered during this process you should see a `install/bin` folder with the `star1d`, `star2d` and `star_evol` binaries ready to be used.


## Notes

- This setup is currently supported on Linux and it has been tested on Ubuntu, Arch Linux, Rocky Linux, and also in Windows through the [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) 
- If you find any errors please share them with us, along with the details of your system





