# !bin/bash
# "$*"和"$@"区别："$*"将所有的参数认为是一个字段, "$@"默认为空格来划分字段, 如果空格在“”里面，不划分. 
# $*和$@没有双引号时是等价的
# $# 表示参数的个数
# http://c.biancheng.net/cpp/view/2739.html https://blog.csdn.net/u011341352/article/details/53215180

index=1

echo "Listing args with \"\$*\":"
for arg in "$*"
do
   echo "Arg #$index=$arg"
   let "index+=1"
done

echo
index=1

echo "Listing args with \"\$@\":"
for arg in "$@"
do
    echo "Arg #$index=$arg"
    let "index+=1"
done

echo
index=1

echo "Listing args with \$* (without quotation marks):"
for arg in $*
do
    echo "Arg #$index=$arg"
    let "index+=1"
done

echo
index=1

echo "Listing args with \$@ (without quotation marks):"
for arg in $@
do
    echo "Arg #$index=$arg"
    let "index+=1"
done

echo

echo "Num of args: \$# "
echo "Num of args: $#"
