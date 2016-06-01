//
//  YLWDetailTextModel.h
//  推库iOS
//
//  Created by Mac on 16/2/23.
//  Copyright © 2016年 YLW. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface YLWDetailTextModel : NSObject
typedef void (^successBlock) (YLWDetailTextModel *);
@property (nonatomic,copy) NSString *id;

@property (nonatomic,copy) NSString *title;

@property (nonatomic,copy) NSString *time;

@property (nonatomic,copy) NSString *feed_title;

@property (nonatomic,copy) NSString *url;

@property (nonatomic,copy) NSString *content;

@property (nonatomic,strong) NSArray *images;

-(instancetype)initWithDictionary:(NSDictionary *)dic;

+(instancetype)detailTextModelWithDictionary:(NSDictionary *)dic;

+(void)detileNewsModelGetWithdetailTextId:(NSString *)detailTextId success:(successBlock)successback;


@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com