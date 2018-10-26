# ubuntu-latex
Docker image for latex (texmaker) base on Ubuntu

# Usage
* To build, execute
```
./docker-build.sh
```
* To run, execute
```
./docker-run.sh
```

# Notes
For Mac environment, need to:
* Install XQuartz from https://www.xquartz.org/
* Run it with:
```
open -a XQuartz
```
* Go to XQuartz preferences --> *Security* and check *Allow connections from network clients*
* Restart XQuartz

References
https://medium.com/@mreichelt/how-to-show-x11-windows-within-docker-on-mac-50759f4b65cb
https://sourabhbajaj.com/blog/2017/02/07/gui-applications-docker-mac/
