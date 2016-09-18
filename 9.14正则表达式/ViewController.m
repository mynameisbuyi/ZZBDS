//
//  ViewController.m
//  9.14正则表达式
//
//  Created by Dc on 16/9/14.
//  Copyright © 2016年 Dc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//对字符串操作的一种逻辑公式
//用途：
//1、检测给定的字符串是否符合我们定义的逻辑
//2、从字符串中获取我们想要的特定部分

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    要检测的手机号
   NSString *str=@"12600000000";
//    定义我们的规则（正则表达式）^ 开始   $ 结束
    NSString *regex=@"^1[3|4|5|7|8|9][0-9]{9}$";
//    谓词
    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex];
//    判断
    NSLog(@"%d",[predicate evaluateWithObject:str]);
    
//    检查座机
    NSString *tel=@"0913-6920480";
    NSString *rege=@"^0\\d{2,3}-\\d{7,8}$";
    NSPredicate *predicat=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",rege];
     NSLog(@"%d",[predicat evaluateWithObject:tel]);
    
    
//    检测身份证号
    NSString *str1=@"61052519999999999x";
    NSString *reg=@"^\\d{17}[x|X|0-9]$";
    NSPredicate *predica=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",reg];
    NSLog(@"%d",[predica evaluateWithObject:str1]);
    
    
//    检测邮箱地址
    NSString *str2=@"chenyi0208@163.com";
    NSString *re=@"^[a-z|A-Z|0-9|.|_|%|+|-]{1,}@[a-z|A-Z|0-9|.|-]{1,}.[a-z|A-Z]{2,3}$";
    NSPredicate *predic=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",re];
    NSLog(@"%d",[predic evaluateWithObject:str2]);
    
    
//    检测中文
    NSString *str3=@"卡上就那个了打开女生的看了就格式发鬼地方那啥你福利大女郎";
    NSString *r=@"^[\u4e00-\u9fa5]{0,}$";
    NSPredicate *predi=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",r];
    NSLog(@"%d",[predi evaluateWithObject:str3]);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
