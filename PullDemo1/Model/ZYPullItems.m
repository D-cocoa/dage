//
//  ZYPullItems.m
//
//  Created by   on 15/3/1
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ZYPullItems.h"
#import "ZYPullComponent.h"


NSString *const kZYPullItemsComponent = @"component";
NSString *const kZYPullItemsTimestamp = @"timestamp";
NSString *const kZYPullItemsWidth = @"width";
NSString *const kZYPullItemsHeight = @"height";


@interface ZYPullItems ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ZYPullItems

@synthesize component = _component;
@synthesize timestamp = _timestamp;
@synthesize width = _width;
@synthesize height = _height;


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
            self.component = [ZYPullComponent modelObjectWithDictionary:[dict objectForKey:kZYPullItemsComponent]];
            self.timestamp = [self objectOrNilForKey:kZYPullItemsTimestamp fromDictionary:dict];
            self.width = [self objectOrNilForKey:kZYPullItemsWidth fromDictionary:dict];
            self.height = [self objectOrNilForKey:kZYPullItemsHeight fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.component dictionaryRepresentation] forKey:kZYPullItemsComponent];
    [mutableDict setValue:self.timestamp forKey:kZYPullItemsTimestamp];
    [mutableDict setValue:self.width forKey:kZYPullItemsWidth];
    [mutableDict setValue:self.height forKey:kZYPullItemsHeight];

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

    self.component = [aDecoder decodeObjectForKey:kZYPullItemsComponent];
    self.timestamp = [aDecoder decodeObjectForKey:kZYPullItemsTimestamp];
    self.width = [aDecoder decodeObjectForKey:kZYPullItemsWidth];
    self.height = [aDecoder decodeObjectForKey:kZYPullItemsHeight];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_component forKey:kZYPullItemsComponent];
    [aCoder encodeObject:_timestamp forKey:kZYPullItemsTimestamp];
    [aCoder encodeObject:_width forKey:kZYPullItemsWidth];
    [aCoder encodeObject:_height forKey:kZYPullItemsHeight];
}

- (id)copyWithZone:(NSZone *)zone
{
    ZYPullItems *copy = [[ZYPullItems alloc] init];
    
    if (copy) {

        copy.component = [self.component copyWithZone:zone];
        copy.timestamp = [self.timestamp copyWithZone:zone];
        copy.width = [self.width copyWithZone:zone];
        copy.height = [self.height copyWithZone:zone];
    }
    
    return copy;
}


@end
