#!/bin/bash

export CLASSPATH=$(hadoop classpath)
export HADOOP_CLASSPATH=$CLASSPATH

javac -d classes SortMapper.java
javac -d classes SortReducer.java
jar -cvf SecondSort.jar -C classes/ .
javac -classpath $CLASSPATH:SecondSort.jar -d classes SortDriver.java
jar -uvf SecondSort.jar -C classes/ .
