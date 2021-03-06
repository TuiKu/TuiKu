//
//  YLWSiteItemTableViewCell.m
//  推库iOS
//
//  Created by Mac on 16/2/19.
//  Copyright © 2016年 YLW. All rights reserved.
//

#import "YLWSiteItemTableViewCell.h"
#import "YLWSiteItemModel.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface YLWSiteItemTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UIButton *CountBtn;

@end

@implementation YLWSiteItemTableViewCell

//- (void)awakeFromNib {
//    
//}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self = [[[NSBundle mainBundle]loadNibNamed:@"YLWSiteItemTableViewCell" owner:nil options:nil] lastObject];
//        self.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_dropdown_leftpart"]];
        
        self.iconImageView.layer.cornerRadius = 12;
        self.iconImageView.layer.masksToBounds = YES;
        self.iconImageView.layer.borderWidth = 1;
        self.iconImageView.layer.borderColor = [UIColor colorWithRed:211 / 255.0 green:211 / 255.0 blue:211 / 255.0 alpha:1].CGColor;
        
        self.CountBtn.layer.cornerRadius = 9;
        self.CountBtn.layer.masksToBounds = YES;

    }
    return self;
}

-(void)setSiteItemModel:(YLWSiteItemModel *)siteItemModel{

    _siteItemModel = siteItemModel;
    
    self.nameLabel.text = siteItemModel.name;
    NSLog(@"%@",siteItemModel.count);
    if (siteItemModel.count.length > 0 ) {
        self.CountBtn.hidden = NO;
        self.CountBtn.titleLabel.text = siteItemModel.count;
    }else{
    
        self.CountBtn.hidden = YES;
    }
    
    
    
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:siteItemModel.image] placeholderImage:[UIImage imageNamed:@"abs_pic"] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
       
        
        
    }];

}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com