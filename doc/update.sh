#!/bin/bash
rm -rf cov/html
lcov -d ../container/Debug/ -o cov/container.info -b . -c > /dev/null
lcov -d ../communicator/Debug/ -o cov/communicator.info -b . -c > /dev/null
genhtml -o cov/html cov/container.info cov/communicator.info > /dev/null
doxygen doxygen/Doxyfile > /dev/null
