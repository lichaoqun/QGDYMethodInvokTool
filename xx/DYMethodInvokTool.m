
//
//  DYMethodInvokTool.m
//  xx
//
//  Created by QG on 2018/1/30.
//  Copyright © 2018年 xinxianzhizao. All rights reserved.
//

#import "DYMethodInvokTool.h"

@implementation DYMethodInvokTool

static NSMapTable *objsDic_;
static dispatch_semaphore_t semaphore_;
+(NSMapTable *)objsDic{
    if (!objsDic_) {
        objsDic_ = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsStrongMemory valueOptions:NSPointerFunctionsWeakMemory];
    }
    return objsDic_;
}
+(dispatch_semaphore_t )semaphore{
    if (!semaphore_) {
        semaphore_ = dispatch_semaphore_create(1);
    }
    return semaphore_;
}

/** 取一个对象 */
+(id)getObjectForKey:(NSString *)key{
    dispatch_semaphore_wait([self semaphore], DISPATCH_TIME_FOREVER);
    if (!key) {
#if DEBUG
        NSAssert(0, @"key 不可以为空");
#endif
        return nil;
    }

    /** 返回值 */
    id obj = [[self objsDic] objectForKey:key];
    dispatch_semaphore_signal([self semaphore]);
    return obj;
}

/** 增加一个对象 */
+(void)setObject:(id)obj withKey:(NSString *)key{
    
    dispatch_semaphore_wait([self semaphore], DISPATCH_TIME_FOREVER);
    
    /** 判断 key value 是不是为空 */
    if (!key || !obj) {
#if DEBUG
        NSAssert(0, @"key 和 value 不可以为空");
#endif
        return ;
    }
    
#if DEBUG
    /** 查看不是有这个对象对应的键名了 */
    NSEnumerator * keyEnumerator = [[self objsDic] keyEnumerator];
    for (NSString *enumKey in keyEnumerator) {
        if ([enumKey isEqualToString:key]) {
            
            /** 断言 */
            NSString *errorMsg = [NSString stringWithFormat:@"当前key已存在 dic:%@", objsDic_];
            NSAssert(0, errorMsg);
            return;
        }
    }
    
    /** 查看不是有这个对象了 */
    NSEnumerator * objEnumerator = [[self objsDic] objectEnumerator];
    for (id enmuObj in objEnumerator) {
        if (enmuObj == obj) {
            
            /** 断言 */
            NSString *errorMsg = [NSString stringWithFormat:@"当前value已存在 dic:%@", objsDic_];
            NSAssert(0, errorMsg);
            return;
        }
    }
#endif

    /** 设置值 */
    [[self objsDic] setObject:obj forKey:key];
    dispatch_semaphore_signal([self semaphore]);
}

/**
 调用这个方法的返回值 如果返回值为 如果没有返回值 则返回 NULL
 
 @param target 执行方法的对象
 @param sel 执行的方法
 @param arg1 参数列表
 */
+(void *)invokWithTarget:(id)target sel:(SEL)sel arguments:(void *)arg1,...NS_REQUIRES_NIL_TERMINATION{
    
    /** 方法名和对象不可以为空 */
    if(!target || !sel){
#if DEBUG
        NSAssert(0, @" -在 [invokWithTarget:sel:arguments:] 方法中 方法名 和 对象 不可以为空- ");
#endif
        return NULL;
    }
    
    /** 初始化 invocation*/
    NSMethodSignature *signature = [target methodSignatureForSelector:sel];
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.target = target;
    invocation.selector = sel;
    
    /** 设置循环变量的初始值*/
    void* eachObject = NULL;
    va_list argumentList;
    
    /** 判断是不是有参数 */
    if (arg1){
        
        /** 设置第一个参数 */
        int index = 2;
        [invocation setArgument:arg1 atIndex:index];
        index++;
        
        /** 开始循环 */
        va_start(argumentList, arg1);
        
        /** 循环设置 invocation 的参数 */
        while ((eachObject = va_arg(argumentList, void *))){
            [invocation setArgument:eachObject atIndex:index];
            index++;
        }
        /** 停止循环 */
        va_end(argumentList);
        
    }
    
    /** 调用方法 */
    [invocation invoke];
    
    /** 设置返回值 */
    void *result = NULL;
    if(signature.methodReturnLength > 0){
        [invocation getReturnValue:&result];
    }
    
    return result;
}

@end
