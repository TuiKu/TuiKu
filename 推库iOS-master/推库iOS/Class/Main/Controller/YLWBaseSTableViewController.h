//
//  YLWBaseSTableViewController.h
//  推库iOS
//
//  Created by Mac on 16/2/27.
//  Copyright © 2016年 YLW. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "YLWSiteItemTableViewCell.h"
#import "YLWSiteItemModel.h"
#import "YLWContentTableViewController.h"
@interface YLWBaseSTableViewController : UITableViewController

@property (nonatomic,assign) BOOL isLogin;

@property (nonatomic,strong) NSArray *itemModelArray;

@property (nonatomic,strong) UIButton *footView;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com