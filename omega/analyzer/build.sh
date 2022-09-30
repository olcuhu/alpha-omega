version=`grep "^LABEL version" Dockerfile | grep -Po '\d+(\.\d+)+'`
docker build --cpuset-cpus 0-1 -t openssf/omega-toolshed:$version . -f Dockerfile