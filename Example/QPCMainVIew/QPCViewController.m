//
//  QPCViewController.m
//  QPCMainVIew
//
//  Created by qpc2015 on 06/30/2021.
//  Copyright (c) 2021 qpc2015. All rights reserved.
//

#import "QPCViewController.h"
#import <FFMainView.h>

@interface QPCViewController ()

@property (nonatomic, strong) FFMainView *mainView;

@end

@implementation QPCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mainView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.mainView];
}

- (FFMainView *)mainView {
    if (_mainView == nil) {
        _mainView = [[FFMainView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
        [_mainView registerCellClass:[UITableViewCell class]];
    }
    return _mainView;
}

@end
