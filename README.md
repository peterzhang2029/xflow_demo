## 1. Introduction

        Distributed LR With Parameter Server 

## 2. Install
        
### 2.1 build ps-lite
```
        cd ps-lite
        make -j

        # Add the library file to the PATH.
        # Assumue current dir is $ROOT_DIR.
        export $LIBRARY_PATH=$ROOT_DIR/ps-lite/deps/lib:$LIBRARY_PATH
        export $LD_LIBRARY_PATH=$ROOT_DIR/ps-lite/deps/lib:$LD_LIBRARY_PATH
        export $CPATH=$ROOT_DIR/ps-lite/deps/include:$CPATH
        export $PATH=$ROOT_DIR/ps-lite/deps/bin:$PATH
        export $LIBRARY_PATH=$ROOT_DIR/ps-lite/build:$LIBRARY_PATH
        export $LD_LIBRARY_PATH=$ROOT_DIR/ps-lite/build:$LD_LIBRARY_PATH
```
### 2.2 build xflow_demo
```
        # Back to current dir.
        cd ..
        mkdir build
        cd build 
        cmake ..
        make -j
``` 

## 3.Run
### 3.1 Local 
```
sh run_ps_local.sh
```

### 3.2 Distributed
```
# on scheduler node 
sh run_ps_dist_scheduler.sh

# on server node
sh run_ps_dist_server.sh

# on worker node
sh run_ps_dist_worker.sh
```


## 4. Acknowledge and Reference
- Referring the design from [xflow](https://github.com/xswang/xflow). 



## 5. AD

欢迎关注公众号：机器学习爱好者

或者扫码：

![avatar](img/gongzhonghao.jpg)

学习更多的机器学习源码相关内容