# ZZLRCParser

###配置
直接把ZZLRCParser.h和.m文件拖入工程，无须配置  

####or  

```
source 'https://github.com/ACommonChinese/ZZLRCParser.git'
pod 'ZZLRCParser', '~> 1.0.0'
```


###使用方法

```
#import "ZZLRCParser.h"

NSString *filePath = [[NSBundle mainBundle] pathForResource:@"蓝莲花" ofType:@"lrc"];
ZZLRCParser *parser = [[ZZLRCParser alloc] initWithFilePath:filePath];
// [parser show]; // 显示所有歌词信息

NSLog(@"%@", [parser lrcByTime:138]); // 138秒 -> 对应歌词  [02:16.51][01:55.46][00:26.83]也曾感到彷徨
```