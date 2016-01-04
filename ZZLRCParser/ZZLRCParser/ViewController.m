//
//  ViewController.m
//  ZZLRCParser
//
//  Created by 刘威振 on 1/4/16.
//  Copyright © 2016 LiuWeiZhen. All rights reserved.
//

#import "ViewController.h"
#import "ZZLRCParser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)test:(id)sender {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"蓝莲花" ofType:@"lrc"];
    ZZLRCParser *parser = [[ZZLRCParser alloc] initWithFilePath:filePath];
    // [parser show]; // 显示所有歌词信息

    NSLog(@"%@", [parser lrcByTime:138]); // 138秒 -> 对应歌词  [02:16.51][01:55.46][00:26.83]也曾感到彷徨
}

@end
