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
@property  (nonatomic, strong)  NSArray      *data;

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


//开始请求
- (void)requestStart:(id)type
{
    NSLog(@"Start---->%@",type);
}

//结束请求
- (void)requestEnd:(id)type
{
    NSLog(@"End---->%@",type);
}

//获取请求结果
- (void)reloadOriginData:(id)data
{
    self.data = [NSArray arrayWithArray:data];
     NSLog(@"Result---->%@",data);
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
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"test"];
        if(!cell)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"test"];
        }
        cell.textLabel.text = self.data[indexPath.row];
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
