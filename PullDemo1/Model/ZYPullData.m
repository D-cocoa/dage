//
//  ZYPullData.m
//
//  Created by   on 15/3/1
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ZYPullData.h"
#import "ZYPullItems.h"


NSString *const kZYPullDataFlag = @"flag";
NSString *const kZYPullDataLts = @"lts";
NSString *const kZYPullDataItems = @"items";
NSString *const kZYPullDataPin = @"pin";
NSString *const kZYPullDataAppApi = @"appApi";


@interface ZYPullData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ZYPullData

@synthesize flag = _flag;
@synthesize lts = _lts;
@synthesize items = _items;
@synthesize pin = _pin;
@synthesize appApi = _appApi;


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
            self.flag = [self objectOrNilForKey:kZYPullDataFlag fromDictionary:dict];
            self.lts = [self objectOrNilForKey:kZYPullDataLts fromDictionary:dict];
    NSObject *receivedZYPullItems = [dict objectForKey:kZYPullDataItems];
    NSMutableArray *parsedZYPullItems = [NSMutableArray array];
    if ([receivedZYPullItems isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedZYPullItems) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedZYPullItems addObject:[ZYPullItems modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedZYPullItems isKindOfClass:[NSDictionary class]]) {
       [parsedZYPullItems addObject:[ZYPullItems modelObjectWithDictionary:(NSDictionary *)receivedZYPullItems]];
    }

    self.items = [NSArray arrayWithArray:parsedZYPullItems];
            self.pin = [self objectOrNilForKey:kZYPullDataPin fromDictionary:dict];
            self.appApi = [self objectOrNilForKey:kZYPullDataAppApi fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.flag forKey:kZYPullDataFlag];
    [mutableDict setValue:self.lts forKey:kZYPullDataLts];
    NSMutableArray *tempArrayForItems = [NSMutableArray array];
    for (NSObject *subArrayObject in self.items) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForItems addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForItems addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForItems] forKey:kZYPullDataItems];
    [mutableDict setValue:self.pin forKey:kZYPullDataPin];
    [mutableDict setValue:self.appApi forKey:kZYPullDataAppApi];

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

    self.flag = [aDecoder decodeObjectForKey:kZYPullDataFlag];
    self.lts = [aDecoder decodeObjectForKey:kZYPullDataLts];
    self.items = [aDecoder decodeObjectForKey:kZYPullDataItems];
    self.pin = [aDecoder decodeObjectForKey:kZYPullDataPin];
    self.appApi = [aDecoder decodeObjectForKey:kZYPullDataAppApi];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_flag forKey:kZYPullDataFlag];
    [aCoder encodeObject:_lts forKey:kZYPullDataLts];
    [aCoder encodeObject:_items forKey:kZYPullDataItems];
    [aCoder encodeObject:_pin forKey:kZYPullDataPin];
    [aCoder encodeObject:_appApi forKey:kZYPullDataAppApi];
}

- (id)copyWithZone:(NSZone *)zone
{
    ZYPullData *copy = [[ZYPullData alloc] init];
    
    if (copy) {

        copy.flag = [self.flag copyWithZone:zone];
        copy.lts = [self.lts copyWithZone:zone];
        copy.items = [self.items copyWithZone:zone];
        copy.pin = [self.pin copyWithZone:zone];
        copy.appApi = [self.appApi copyWithZone:zone];
    }
    
    return copy;
}


@end
