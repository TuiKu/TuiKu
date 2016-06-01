//
//  YLWTitleModel.h
//  推库iOS
//
//  Created by Mac on 16/2/18.
//  Copyright © 2016年 YLW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YLWTitleModel : NSObject

@property (nonatomic,copy) NSString *title;

@property (nonatomic,copy) NSString *cid;

@property (nonatomic,copy) NSString *urlstring;

-(instancetype)initWithDictionary:(NSDictionary *)dic;

+(instancetype)titleModelWithDictionary:(NSDictionary *)dic;

+(NSArray *)titleModelGetModelArrayWith:(NSString *)plistName;
@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com