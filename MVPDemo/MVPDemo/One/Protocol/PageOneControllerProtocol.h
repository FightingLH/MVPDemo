//
//  PageOneControllerProtocol.h
//  MVPDemo
//
//  Created by feeyo on 2018/4/13.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PageOneControllerProtocol <NSObject>

/**
 *
 * 获取请求参数
 */

- (NSDictionary *)paremeter;

/**
 *
 * 刷新原始数据 一般用于网络请求
 */

- (void)reloadOriginData:(id)data;

/**
 *
 * 请求开始,处理请求前加载方式或其他 type:当前请求者
 * type 开始和结束要对应
 */
- (void)requestStart:(id)type;

- (void)requestEnd:(id)type;

@end
