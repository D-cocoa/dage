//
//  ZYPullItems.h
//
//  Created by   on 15/3/1
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZYPullComponent;

@interface ZYPullItems : NSObject <NSCoding, NSCopying>

@property (nonatomic,strong) NSString *desciption;

@property (nonatomic, strong) ZYPullComponent *component;
@property (nonatomic, strong) NSString *timestamp;
@property (nonatomic, strong) NSString *width;
@property (nonatomic, strong) NSString *height;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
