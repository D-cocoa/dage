//
//  ZYPullItemPicUrlList.h
//
//  Created by   on 15/3/1
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ZYPullItemPicUrlList : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *picUrl;
@property (nonatomic, strong) NSString *part;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
