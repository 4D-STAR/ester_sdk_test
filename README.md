# Installing Ester with the 4DSTAR SDK

## Introduction

At 4D-STAR, we strive to make our software widely accessible. To achieve this goal, simplifying the installation process is key. Inspired by the MESA installation approach, we aim to streamline the setup of Ester by creating a Software Development Kit (SDK) that packages all the necessary libraries for compilation into a single bundle. Given the interest in integrating MESA functionality within Ester, it makes sense to compile both with the same SDK, hence the idea of extending the already existing MESA SDK. 

Currently, the 4D-STAR SDK extends the MESA SDK by including cmake, CBLAS, SWIG, and the C++ API of HDF-5.


## Usage

This repo was made to test the 4DSTAR SDK. Running the following script

```
./installEsterWithSDK.sh
```

Downloads and initializes the SDK, patches, compiles and tests Ester. 

The script assumes that `git`, `curl` and `tar` exists in the system. Additionally the script assumes that Python3 (with Numpy and Matplotlib) is installed, as these are not provided by the SDK.

## Notes

- Only the `evolution` branch of Ester was tested
- This setup is currently supported on Linux (tested on Ubuntu and Arch Linux).





