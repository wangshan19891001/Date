//
//  ViewController.m
//  Date
//
//  Created by 王陕 on 16/5/20.
//  Copyright © 2016年 王陕. All rights reserved.
//

#import "ViewController.h"
#import <DateTools.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // NSDate 取出的时0时区的时间, 北京是东八区, 表示取出的时间是八个小时前的北京时间, 所以要转换成北京时间, 需要在这个基础上加上八个小时
//    NSDate *date = [NSDate date];
//    NSLog(@"%@", date);
//    
//    // 在现在的基础上加上8个小时, 打印北京时间
//    NSDate *bjDate = [NSDate dateWithTimeIntervalSinceNow:8*60*60];
//    NSLog(@"%@", bjDate);
//    
//    // 从1970年起, 给一个以秒为单位的时间戳, 换算出当前的时间
//    NSDate *stampDate = [NSDate dateWithTimeIntervalSince1970:46*12*30*24*60*60];
//    NSLog(@"%@", stampDate);
//    
//    // 一个日期时间的对象, 也可以换算出到某一参考时间之间的一个时间戳, 可用于提示多少秒之前, 多少分钟之前, 多少小时之前, 多少天之前
//    NSTimeInterval time = [bjDate timeIntervalSinceDate:date];
//    NSLog(@"%f", time);
    
    
    
    // 在iOS中, 经常需要在NSDate 与 NSString 之间相互转换, iOS提供了日期格式器NSDateFormatter, 可以起到在NSDate 和NSString之间相互转换
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy年MM月dd日 HH时mm分ss秒"];
    NSString *BjString = [formatter stringFromDate:[NSDate date]];
    NSLog(@"%@", BjString);
    
    
    // 导入DateTools 第三方日期工具库, 就可以获取,当前是星期几
    NSString * dateStr = [[NSDate date] formattedDateWithStyle: NSDateFormatterFullStyle];
    NSLog(@"%@", dateStr);
    
    
    NSDate *sunday = [NSDate dateWithTimeIntervalSinceNow:2*24*3600];
    
    NSLog(@"%@", [[NSDate date] weekdayString]);
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
