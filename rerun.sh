#!/bin/bash

BASEDIR=/user/user01/LAB3/SecondarySort

export CLASSPATH=$(hadoop classpath)
export HADOOP_CLASSPATH=$CLASSPATH

rm -rf $BASEDIR/OUT
hadoop jar SecondSort.jar SecondSort.SortDriver $BASEDIR/DATA/ $BASEDIR/OUT 

