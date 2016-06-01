//
//  YLWTitleScrollView.h
//  推库iOS
//
//  Created by Mac on 16/2/18.
//  Copyright © 2016年 YLW. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YLWTitleScrollView;
@protocol YLWTitleScrollViewDelegate <NSObject>

-(void)titleScrollView:(YLWTitleScrollView *)titleScrollView WithTitleLabel:(UILabel *)titleLabel;

@end
@interface YLWTitleScrollView : UIScrollView

@property (nonatomic,strong) NSArray *titleModelArray;

@property (nonatomic,strong) id<YLWTitleScrollViewDelegate> titledelegate;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com