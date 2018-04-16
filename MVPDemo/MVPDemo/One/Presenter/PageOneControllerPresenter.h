//
//  PageOneControllerPresenter.h
//  MVPDemo
//
//  Created by feeyo on 2018/4/13.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PageOneControllerProtocol.h"

@interface PageOneControllerPresenter : NSObject

/**
 *
 * protocol和controller 绑定
 */
- (void)bindProtocolToControl:(id<PageOneControllerProtocol>)control;

/**
 *
 * 获取原始数据
 */
- (void)getServiceData;

/**
 *
 * 处理逻辑
 */

@end
