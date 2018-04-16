//
//  PageOneControllerPresenter.m
//  MVPDemo
//
//  Created by feeyo on 2018/4/13.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import "PageOneControllerPresenter.h"


@interface PageOneControllerPresenter()
@property  (nonatomic, weak) id<PageOneControllerProtocol>control;
@end

@implementation PageOneControllerPresenter

- (void)bindProtocolToControl:(id<PageOneControllerProtocol>)control
{
    self.control = control;
}

- (void)getServiceData
{
    if (self.control) {
        NSLog(@"请求参数---->%@",self.control.paremeter);
        [self.control reloadOriginData:@"请求数据"];
    }
}

@end
