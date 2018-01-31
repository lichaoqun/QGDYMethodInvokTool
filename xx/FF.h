//
//  FF.h
//  xx
//
//  Created by QG on 2018/1/30.
//  Copyright © 2018年 xinxianzhizao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FF : NSObject
//-(void)logStr;
//-(void)logStr:(NSString *)str1;
//-(void)logStr:(NSString *)str1 str2:(NSString *)str2;
//-(void)logStr:(NSString *)str1 str2:(NSString *)str2 str3:(NSString *)str3;
//-(void)logStr:(NSString *)str1 num2:(NSNumber *)str2;
//-(void)int1:(int)int1 int2:(int)int2;
//-(void)logStr:(NSString *)str1 int2:(int)int2;


-(NSString*)logStr;
-(NSString*)logStr:(NSString *)str1;
-(NSString*)logStr:(NSString *)str1 str2:(NSString *)str2;
-(void)logStr:(NSString *)str1 str2:(NSString *)str2 str3:(NSString *)str3;
-(BOOL)logStr:(NSString *)str1 num2:(NSNumber *)num2;
-(int)int1:(int)int1 int2:(int)int2;
-(NSString*)logStr:(NSString *)str1 int2:(int)int2;

//-(int)logStr;
//-(int)logStr:(NSString *)str1;
//-(int)logStr:(NSString *)str1 str2:(NSString *)str2;
//-(int)logStr:(NSString *)str1 str2:(NSString *)str2 str3:(NSString *)str3;
//-(int)logStr:(NSString *)str1 num2:(NSNumber *)str2;
//-(int)int1:(int)int1 int2:(int)int2;
//-(int)logStr:(NSString *)str1 int2:(int)int2;
@end
