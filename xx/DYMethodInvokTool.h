//
//  DYMethodInvokTool.h
//  xx
//
//  Created by QG on 2018/1/30.
//  Copyright © 2018年 xinxianzhizao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DYMethodInvokTool : NSObject

 /** 取一个对象 */
+(id)getObjectForKey:(NSString *)key;

 /** 增加一个对象 */
+(void)setObject:(id)obj withKey:(NSString *)key;

/**
 调用这个方法的返回值 如果返回值为 如果没有返回值 则返回 NULL
 
 @param target 执行方法的对象
 @param sel 执行的方法
 @param arg1 参数列表
 */
+(void *)invokWithTarget:(id)target sel:(SEL)sel arguments:(void *)arg1,...NS_REQUIRES_NIL_TERMINATION;
@end
