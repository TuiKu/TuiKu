//
//  YLWUserItemModel.h
//  推库iOS
//
//  Created by Mac on 16/2/21.
//  Copyright © 2016年 YLW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YLWUserItemModel : NSObject

@property (nonatomic,copy) NSString *name;

@property (nonatomic,copy) NSString *urlstring;

@property (nonatomic,copy) NSString *icon;

@property (nonatomic,assign) BOOL swich;
+(instancetype)userItemModelWithName:(NSString *)name;

+(instancetype)userItemModelWithName:(NSString *)name urlstring:(NSString *)urlstring;

+(instancetype)userItemModelWithName:(NSString *)name icon:(NSString *)icon;

+(instancetype)userItemModelWithName:(NSString *)name swich:(BOOL)swich;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com