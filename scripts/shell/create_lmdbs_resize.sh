if [ "$1" = "train" ]
then
	lmdb_train=$PROJ_HOME"/data/lmdb/train/"
	lmdb_train1=$lmdb_train"train1"
	lmdb_train2=$lmdb_train"train2"
	rm -r $lmdb_train1
	rm -r $lmdb_train2
	$CAFFE_ROOT"/build/tools/convert_imageset" -resize_height 256 -resize_width 256 $PROJ_HOME"/data/train/" $PROJ_HOME"/data/train/train1.txt" $lmdb_train1
	$CAFFE_ROOT"/build/tools/convert_imageset" -resize_height 256 -resize_width 256 $PROJ_HOME"/data/train/" $PROJ_HOME"/data/train/train2.txt" $lmdb_train2
elif [ "$1" = "test" ]
then
	lmdb_test=$PROJ_HOME"/data/lmdb/test/"
	test1_lmdb=$lmdb_test"test1"
	test2_lmdb=$lmdb_test"test2"
	rm -r $test1_lmdb
	rm -r $test2_lmdb
	$CAFFE_ROOT"/build/tools/convert_imageset" -resize_height 256 -resize_width 256 $PROJ_HOME"/data/test/" $PROJ_HOME"/data/test/test1.txt" $test1_lmdb
	$CAFFE_ROOT"/build/tools/convert_imageset" -resize_height 256 -resize_width 256 $PROJ_HOME"/data/test/" $PROJ_HOME"/data/test/test2.txt" $test2_lmdb
else
	echo "Wrong Param"
fi
