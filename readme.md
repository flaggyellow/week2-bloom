### Bloom Filter 需求分析

-------------

#### 功能需求

添加元素

查询元素

#### 功能描述

①Bloom过滤器本身作为一个类存在，初始化Bloom过滤器以后，根据用户指定的位长度生成位图。

②作为一个Demo，暂时仅支持逐个添加或者查询元素。

③添加元素时，Bloom过滤器首先拉取hash数组hashTable，逐个对元素hash，返回位图bit位下标，对对应下标置1，返回操作结果码S_OK

④查询元素时，Bloom过滤器首先拉取hash数组hashTable，逐个对元素hash，并查询对应bit位是否为1，若为1，则继续hash，若为0，则说明该元素不在集合内，返回False；若检查完hashTable以后全为1则返回True。

⑤因为大概是没有用到指针，所以默认析构即可。

⑥简单起见，先仅支持String。



#### 数据结构

hash函数数组hashTable

hash函数设计：unsigned int demoHash(unsigned int bitmap_width, int)

一个bitmap

*中间数据结构

>位图大小：unsigned int size *直接存储位大小，就限制那么大吧，默认2的30次



### 位图功能描述

---------------------

底层通过vector\<int\>进行存储

初始化时，根据用户传入的位图大小调整。

为简单起见，传入的参数表示2的左移位数，保证位图长度一定是2的倍数。

#### 功能需求

bit位置1，int set_bit(unsigned int index)

bit位清0，int reset_bit(unsigned int index)

查询bit位，bool query(unsigned int index)

#### 数据结构

vector\<int> _bit

unsigned int size