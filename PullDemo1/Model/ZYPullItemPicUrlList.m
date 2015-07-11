//
//  ZYPullItemPicUrlList.m
//
//  Created by   on 15/3/1
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ZYPullItemPicUrlList.h"


NSString *const kZYPullItemPicUrlListPicUrl = @"picUrl";
NSString *const kZYPullItemPicUrlListPart = @"part";


@interface ZYPullItemPicUrlList ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ZYPullItemPicUrlList

@synthesize picUrl = _picUrl;
@synthesize part = _part;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.picUrl = [self objectOrNilForKey:kZYPullItemPicUrlListPicUrl fromDictionary:dict];
            self.part = [self objectOrNilForKey:kZYPullItemPicUrlListPart fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.picUrl forKey:kZYPullItemPicUrlListPicUrl];
    [mutableDict setValue:self.part forKey:kZYPullItemPicUrlListPart];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.picUrl = [aDecoder decodeObjectForKey:kZYPullItemPicUrlListPicUrl];
    self.part = [aDecoder decodeObjectForKey:kZYPullItemPicUrlListPart];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_picUrl forKey:kZYPullItemPicUrlListPicUrl];
    [aCoder encodeObject:_part forKey:kZYPullItemPicUrlListPart];
}

- (id)copyWithZone:(NSZone *)zone
{
    ZYPullItemPicUrlList *copy = [[ZYPullItemPicUrlList alloc] init];
    
    if (copy) {

        copy.picUrl = [self.picUrl copyWithZone:zone];
        copy.part = [self.part copyWithZone:zone];
    }
    
    return copy;
}


@end
