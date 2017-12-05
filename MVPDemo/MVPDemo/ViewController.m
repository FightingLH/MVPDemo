//
//  ViewController.m
//  MVPDemo
//
//  Created by feeyo on 2017/11/23.
//  Copyright © 2017年 lihuan. All rights reserved.
//
// user->view->presenter->model->presenter->view
#import "ViewController.h"

@interface ViewController ()
@property  (nonatomic, strong)  UITableView  *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableView *)tableView
{
    if (!_tableView) {
    
    }
    return _tableView;
}
@end
