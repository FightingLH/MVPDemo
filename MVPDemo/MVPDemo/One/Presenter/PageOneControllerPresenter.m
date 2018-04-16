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
    [self.control requestStart:@"开始"];
    if (self.control) {
        [self.control requestEnd:@"结束"];
        NSMutableArray *data = [NSMutableArray new];
        for (NSInteger i = 0; i < arc4random()%100; i ++) {
            [data addObject:[NSString stringWithFormat:@"第%@个",@(i)]];
        }
        
        [self.control reloadOriginData:data];
    }
}

@end
