

//
//  TTT.m
//  xx
//
//  Created by QG on 2018/1/30.
//  Copyright © 2018年 xinxianzhizao. All rights reserved.
//

#import "TTT.h"
#import <objc/message.h>

@implementation TTT

+(void)add:(id)obj name:(NSString *)name arguments:(void *)argument,...NS_REQUIRES_NIL_TERMINATION{
    
    NSMethodSignature *signature = [obj methodSignatureForSelector:NSSelectorFromString(name)];
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.target = obj;
    invocation.selector = NSSelectorFromString(name);
    
    

    void* eachObject = NULL;
   va_list argumentList;

   if (argument){
       
       int index = 3;
       [invocation setArgument:&argument atIndex:2];
       
     va_start(argumentList, argument);
       while ((eachObject = va_arg(argumentList, void*))){
           [invocation setArgument:&eachObject atIndex:index];
           index++;
        }
   va_end(argumentList);
       
   }
    
    [invocation invoke];
}

@end
