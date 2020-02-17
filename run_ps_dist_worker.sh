root_path=`pwd`
model_name=0
epochs=100
export DMLC_NUM_WORKER=1
export DMLC_NUM_SERVER=1
export DMLC_PS_ROOT_URI='10.173.63.96'
export DMLC_PS_ROOT_PORT=8000
export DMLC_ROLE='worker'
sh ./scripts/start_worker.sh $root_path/build/test/src/xflow_lr $root_path/data/small_train $root_path/data/small_test $model_name $epochs
