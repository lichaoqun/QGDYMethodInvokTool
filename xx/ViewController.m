//
//  ViewController.m
//  xx
//
//  Created by QG on 2018/1/30.
//  Copyright © 2018年 xinxianzhizao. All rights reserved.
//

#import "ViewController.h"
#import "TTT.h"
#import "FF.h"
#import "DYMethodInvokTool.h"
#import "RedView.h"
#import <objc/runtime.h>

@interface ViewController ()

@property (nonatomic ,weak)UIView *vie1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    FF *f = [[FF alloc]init];
//    -(void)logStr:(NSString *)str1;
//    -(void)logStr:(NSString *)str1 str2:(NSString *)str2;
//    -(void)logStr:(NSString *)str1 str2:(NSString *)str2 str3:(NSString *)str3;
//    -(void)logStr:(NSString *)str1 num2:(NSNumber *)str2;
//    -(void)int1:(int)int1 int2:(int)int2;
//    -(void)logStr:(NSString *)str1 int2:(int)int2;
    
    
//    NSLog(@"%@\n%@\n%@\n%@\n%d\n%d\n%@\n",
//    [DYMethodInvokTool invokWithTarget:f methodName:NSStringFromSelector(@selector(logStr)) arguments:nil, nil],
//    [DYMethodInvokTool invokWithTarget:f methodName:NSStringFromSelector(@selector(logStr:)) arguments:@"x", nil],
//    [DYMethodInvokTool invokWithTarget:f methodName:NSStringFromSelector(@selector(logStr:str2:)) arguments:@"x", @"y", nil],
//    [DYMethodInvokTool invokWithTarget:f methodName:NSStringFromSelector(@selector(logStr:str2:str3:)) arguments:@"x", @"y", @"z", nil],
//    (BOOL)[DYMethodInvokTool invokWithTarget:f methodName:NSStringFromSelector(@selector(logStr:num2:)) arguments:@"x", @(2), nil],
//    (int)[DYMethodInvokTool invokWithTarget:f methodName:NSStringFromSelector(@selector(int1:int2:)) arguments: (void *)3, 5, nil],
//    [DYMethodInvokTool invokWithTarget:f methodName:NSStringFromSelector(@selector(logStr:int2:)) arguments:@"x", 6, nil]);
    
    RedView *view = [[RedView alloc]init];
    [self.view addSubview:view];
    self.vie1 = view;
    [DYMethodInvokTool setObject:view withKey:@"hhee"];
    [DYMethodInvokTool setObject:view withKey:@"xx"];

}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
        
    id v = [DYMethodInvokTool getObjectForKey:@"hhee"];
    UIColor *color = [UIColor redColor];
//    CGRect rect = CGRectMake(0, 0, 90, 90);
//    NSValue *value =  [NSValue valueWithCGRect:rect];
    
    
    void* c = (__bridge void *)self;
//    void*r = (__bridge void *)rect;
    void * i = (void *)5;
    
    
//    BOOL b =  (BOOL)[DYMethodInvokTool invokWithTarget:v methodName:@"setBackgroundColor:int1:" arguments:(void*)color, i, nil];

//    BOOL b1 =  (BOOL)[DYMethodInvokTool invokWithTarget:v methodName:@"setBackgroundColor:frame:" arguments:(void*)color, rect, nil];
//
//    BOOL b2 =  (BOOL)[DYMethodInvokTool invokWithTarget:v methodName:@"setBackgroundColor:value:" arguments:(void*)color, value, nil];

    NSString *str1 = @"1";
    NSNumber *num = @(2);
    int int1 = 3;
    CGRect rect = CGRectMake(4, 4, 4, 4);
    BOOL b3 = (BOOL)[DYMethodInvokTool invokWithTarget:v sel:nil arguments:&str1, &num,&int1,&rect, nil];
    
    NSLog(@"%d", b3);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
