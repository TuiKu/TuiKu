//
//  YLWBasesHomeViewController.h
//  推库iOS
//
//  Created by Mac on 16/3/3.
//  Copyright © 2016年 YLW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YLWDetailTextViewController.h"

#import "YLWTitleModel.h"

#import "YLWTitleScrollView.h"
#import "YLWContentCollectionView.h"
#import "YLWCollectionViewCell.h"
@interface YLWBasesHomeViewController : UIViewController

@property (nonatomic,strong) NSArray *titleModelArray;

@property (nonatomic,strong) YLWTitleScrollView *titleScrollView;

@property (nonatomic,strong) YLWContentCollectionView *contentCollectionView;

@property (nonatomic,strong) UICollectionViewFlowLayout *flowLayout;
//记录上一次选中的label的下标
@property (nonatomic,assign) NSInteger lastIndex;

-(void)setUI;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com