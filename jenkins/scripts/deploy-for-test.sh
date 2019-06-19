#!/bin/bash
echo 'The following "npm" command builds your Node.js/React application for'
echo 'production in the local "build" directory (i.e. within the appropriate'
echo 'subdirectory of "/var/jenkins_home/workspace/"), correctly bundles React'
echo 'in production mode and optimizes the build for the best performance.'
set -x
source /root/.bashrc
npm run build
set +x

/myscript/expect_scp 47.100.47.91 root HLTech@2019666 ./build /root/hongjun/test/
echo 'created your initial Pipeline as a Jenkinsfile.)'
