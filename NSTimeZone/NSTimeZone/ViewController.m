//
//  ViewController.m
//  NSTimeZone
//
//  Created by peace on 2018/4/23.
//  Copyright © 2018 peace. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark -
#pragma mark -- Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"公元：");
    [self outputDateWithFormat:@"G"];
    NSLog(@"\n");
    NSLog(@"年：");
    [self outputDateWithFormat:@"yy"];
    [self outputDateWithFormat:@"yyyy"];
    NSLog(@"\n");
    NSLog(@"月：");
    [self outputDateWithFormat:@"M"];
    [self outputDateWithFormat:@"MM"];
    [self outputDateWithFormat:@"MMM"];
    [self outputDateWithFormat:@"MMMM"];
    NSLog(@"\n");
    NSLog(@"日：");
    [self outputDateWithFormat:@"d"];
    [self outputDateWithFormat:@"dd"];
    NSLog(@"\n");
    NSLog(@"星期：");
    [self outputDateWithFormat:@"EEE"];
    [self outputDateWithFormat:@"EEEE"];
    NSLog(@"\n");
    NSLog(@"上/下午：");
    [self outputDateWithFormat:@"aa"];
    NSLog(@"\n");
    NSLog(@"小时（24）：");
    [self outputDateWithFormat:@"H"];
    [self outputDateWithFormat:@"HH"];
    NSLog(@"\n");
    NSLog(@"小时（12）：");
    [self outputDateWithFormat:@"K"];
    [self outputDateWithFormat:@"KK"];
    NSLog(@"\n");
    NSLog(@"分：");
    [self outputDateWithFormat:@"m"];
    [self outputDateWithFormat:@"mm"];
    NSLog(@"\n");
    NSLog(@"秒：");
    [self outputDateWithFormat:@"s"];
    [self outputDateWithFormat:@"ss"];
    NSLog(@"\n");
    NSLog(@"微秒：");
    [self outputDateWithFormat:@"S"];
    [self outputDateWithFormat:@"SS"];
    [self outputDateWithFormat:@"SSS"];
    NSLog(@"\n");
    NSLog(@"时区：");
    [self outputDateWithFormat:@"Z"];
    
    NSLog(@"\n");
    [self outputDateWithFormat:@"G yyyy-MM-dd EEEE aa HH:mm:ss.SSS Z"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark -- Date
- (void)outputDateWithFormat:(NSString *)format {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"UTC+0800"]];
//    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"GTM"]];
    [dateFormatter setTimeZone:[NSTimeZone localTimeZone]];
    [dateFormatter setDateFormat:format];
    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    NSLog(@"dateString = %@",dateString);
}

@end
