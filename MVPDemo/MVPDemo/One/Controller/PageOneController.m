//
//  PageOneController.m
//  MVPDemo
//
//  Created by feeyo on 2018/4/13.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import "PageOneController.h"
#import "PageOneControllerPresenter.h"
#import <Masonry/Masonry.h>

@interface PageOneController ()<PageOneControllerProtocol,UITableViewDelegate,UITableViewDataSource>

@property  (nonatomic, strong)  PageOneControllerPresenter *presenter;

@property  (nonatomic, strong)  UITableView  *tableView;
@end

@implementation PageOneController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.bottom.equalTo(self.view);
    }];
    self.presenter = [[PageOneControllerPresenter alloc]init];
    [self.presenter bindProtocolToControl:self];
    [self.presenter getServiceData];
    
}


//delegate
- (void)reloadOriginData:(id)data
{
    NSLog(@"%@",data);
}

- (NSDictionary *)paremeter
{
    return @{@"id":@(110),@"name":@"li"};
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"test"];
        if(!cell)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"test"];
        }
        cell.textLabel.text = @"测试";
        return cell;
}

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

@end
