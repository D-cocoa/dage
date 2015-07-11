//
//  ZYPullComponent.m
//
//  Created by   on 15/3/1
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ZYPullComponent.h"
#import "ZYPullAction.h"


NSString *const kZYPullComponentMonthColor = @"monthColor";
NSString *const kZYPullComponentShowId = @"showId";
NSString *const kZYPullComponentWeekDayBgUrl = @"weekDayBgUrl";
NSString *const kZYPullComponentPicUrl = @"picUrl";
NSString *const kZYPullComponentShowTimeColor = @"showTimeColor";
NSString *const kZYPullComponentMonth = @"month";
NSString *const kZYPullComponentXingQi = @"xingQi";
NSString *const kZYPullComponentBackgroundUrl = @"backgroundUrl";
NSString *const kZYPullComponentShowTypeId = @"showTypeId";
NSString *const kZYPullComponentWeekDay = @"weekDay";
NSString *const kZYPullComponentComponentType = @"componentType";
NSString *const kZYPullComponentAction = @"action";
NSString *const kZYPullComponentDay = @"day";
NSString *const kZYPullComponentMonthOnly = @"monthOnly";
NSString *const kZYPullComponentYear = @"year";
NSString *const kZYPullComponentHasVideo = @"hasVideo";
NSString *const kZYPullComponentId = @"id";
NSString *const kZYPullComponentPublishColor = @"publishColor";
NSString *const kZYPullComponentShowTime = @"showTime";
NSString *const kZYPullComponentHeight = @"height";
NSString *const kZYPullComponentItemsCount = @"itemsCount";
NSString *const kZYPullComponentWidth = @"width";
NSString *const kZYPullComponentWeekDayColor = @"weekDayColor";
NSString *const kZYPullComponentTrackValue = @"trackValue";
NSString *const kZYPullComponentCollectionCount = @"collectionCount";
NSString *const kZYPullComponentCommentCount = @"commentCount";
NSString *const kZYPullComponentDayColor = @"dayColor";
NSString *const kZYPullComponentShowType = @"showType";
NSString *const kZYPullComponentDescription = @"description";


@interface ZYPullComponent ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ZYPullComponent

@synthesize monthColor = _monthColor;
@synthesize showId = _showId;
@synthesize weekDayBgUrl = _weekDayBgUrl;
@synthesize picUrl = _picUrl;
@synthesize showTimeColor = _showTimeColor;
@synthesize month = _month;
@synthesize xingQi = _xingQi;
@synthesize backgroundUrl = _backgroundUrl;
@synthesize showTypeId = _showTypeId;
@synthesize weekDay = _weekDay;
@synthesize componentType = _componentType;
@synthesize action = _action;
@synthesize day = _day;
@synthesize monthOnly = _monthOnly;
@synthesize year = _year;
@synthesize hasVideo = _hasVideo;
@synthesize componentIdentifier = _componentIdentifier;
@synthesize publishColor = _publishColor;
@synthesize showTime = _showTime;
@synthesize height = _height;
@synthesize itemsCount = _itemsCount;
@synthesize width = _width;
@synthesize weekDayColor = _weekDayColor;
@synthesize trackValue = _trackValue;
@synthesize collectionCount = _collectionCount;
@synthesize commentCount = _commentCount;
@synthesize dayColor = _dayColor;
@synthesize showType = _showType;
@synthesize componentDescription = _componentDescription;


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
            self.monthColor = [self objectOrNilForKey:kZYPullComponentMonthColor fromDictionary:dict];
            self.showId = [self objectOrNilForKey:kZYPullComponentShowId fromDictionary:dict];
            self.weekDayBgUrl = [self objectOrNilForKey:kZYPullComponentWeekDayBgUrl fromDictionary:dict];
            self.picUrl = [self objectOrNilForKey:kZYPullComponentPicUrl fromDictionary:dict];
            self.showTimeColor = [self objectOrNilForKey:kZYPullComponentShowTimeColor fromDictionary:dict];
            self.month = [self objectOrNilForKey:kZYPullComponentMonth fromDictionary:dict];
            self.xingQi = [self objectOrNilForKey:kZYPullComponentXingQi fromDictionary:dict];
            self.backgroundUrl = [self objectOrNilForKey:kZYPullComponentBackgroundUrl fromDictionary:dict];
            self.showTypeId = [self objectOrNilForKey:kZYPullComponentShowTypeId fromDictionary:dict];
            self.weekDay = [self objectOrNilForKey:kZYPullComponentWeekDay fromDictionary:dict];
            self.componentType = [self objectOrNilForKey:kZYPullComponentComponentType fromDictionary:dict];
            self.action = [ZYPullAction modelObjectWithDictionary:[dict objectForKey:kZYPullComponentAction]];
            self.day = [self objectOrNilForKey:kZYPullComponentDay fromDictionary:dict];
            self.monthOnly = [self objectOrNilForKey:kZYPullComponentMonthOnly fromDictionary:dict];
            self.year = [self objectOrNilForKey:kZYPullComponentYear fromDictionary:dict];
            self.hasVideo = [self objectOrNilForKey:kZYPullComponentHasVideo fromDictionary:dict];
            self.componentIdentifier = [self objectOrNilForKey:kZYPullComponentId fromDictionary:dict];
            self.publishColor = [self objectOrNilForKey:kZYPullComponentPublishColor fromDictionary:dict];
            self.showTime = [self objectOrNilForKey:kZYPullComponentShowTime fromDictionary:dict];
            self.height = [self objectOrNilForKey:kZYPullComponentHeight fromDictionary:dict];
            self.itemsCount = [self objectOrNilForKey:kZYPullComponentItemsCount fromDictionary:dict];
            self.width = [self objectOrNilForKey:kZYPullComponentWidth fromDictionary:dict];
            self.weekDayColor = [self objectOrNilForKey:kZYPullComponentWeekDayColor fromDictionary:dict];
            self.trackValue = [self objectOrNilForKey:kZYPullComponentTrackValue fromDictionary:dict];
            self.collectionCount = [self objectOrNilForKey:kZYPullComponentCollectionCount fromDictionary:dict];
            self.commentCount = [self objectOrNilForKey:kZYPullComponentCommentCount fromDictionary:dict];
            self.dayColor = [self objectOrNilForKey:kZYPullComponentDayColor fromDictionary:dict];
            self.showType = [self objectOrNilForKey:kZYPullComponentShowType fromDictionary:dict];
            self.componentDescription = [self objectOrNilForKey:kZYPullComponentDescription fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.monthColor forKey:kZYPullComponentMonthColor];
    [mutableDict setValue:self.showId forKey:kZYPullComponentShowId];
    [mutableDict setValue:self.weekDayBgUrl forKey:kZYPullComponentWeekDayBgUrl];
    [mutableDict setValue:self.picUrl forKey:kZYPullComponentPicUrl];
    [mutableDict setValue:self.showTimeColor forKey:kZYPullComponentShowTimeColor];
    [mutableDict setValue:self.month forKey:kZYPullComponentMonth];
    [mutableDict setValue:self.xingQi forKey:kZYPullComponentXingQi];
    [mutableDict setValue:self.backgroundUrl forKey:kZYPullComponentBackgroundUrl];
    [mutableDict setValue:self.showTypeId forKey:kZYPullComponentShowTypeId];
    [mutableDict setValue:self.weekDay forKey:kZYPullComponentWeekDay];
    [mutableDict setValue:self.componentType forKey:kZYPullComponentComponentType];
    [mutableDict setValue:[self.action dictionaryRepresentation] forKey:kZYPullComponentAction];
    [mutableDict setValue:self.day forKey:kZYPullComponentDay];
    [mutableDict setValue:self.monthOnly forKey:kZYPullComponentMonthOnly];
    [mutableDict setValue:self.year forKey:kZYPullComponentYear];
    [mutableDict setValue:self.hasVideo forKey:kZYPullComponentHasVideo];
    [mutableDict setValue:self.componentIdentifier forKey:kZYPullComponentId];
    [mutableDict setValue:self.publishColor forKey:kZYPullComponentPublishColor];
    [mutableDict setValue:self.showTime forKey:kZYPullComponentShowTime];
    [mutableDict setValue:self.height forKey:kZYPullComponentHeight];
    [mutableDict setValue:self.itemsCount forKey:kZYPullComponentItemsCount];
    [mutableDict setValue:self.width forKey:kZYPullComponentWidth];
    [mutableDict setValue:self.weekDayColor forKey:kZYPullComponentWeekDayColor];
    [mutableDict setValue:self.trackValue forKey:kZYPullComponentTrackValue];
    [mutableDict setValue:self.collectionCount forKey:kZYPullComponentCollectionCount];
    [mutableDict setValue:self.commentCount forKey:kZYPullComponentCommentCount];
    [mutableDict setValue:self.dayColor forKey:kZYPullComponentDayColor];
    [mutableDict setValue:self.showType forKey:kZYPullComponentShowType];
    [mutableDict setValue:self.componentDescription forKey:kZYPullComponentDescription];

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

    self.monthColor = [aDecoder decodeObjectForKey:kZYPullComponentMonthColor];
    self.showId = [aDecoder decodeObjectForKey:kZYPullComponentShowId];
    self.weekDayBgUrl = [aDecoder decodeObjectForKey:kZYPullComponentWeekDayBgUrl];
    self.picUrl = [aDecoder decodeObjectForKey:kZYPullComponentPicUrl];
    self.showTimeColor = [aDecoder decodeObjectForKey:kZYPullComponentShowTimeColor];
    self.month = [aDecoder decodeObjectForKey:kZYPullComponentMonth];
    self.xingQi = [aDecoder decodeObjectForKey:kZYPullComponentXingQi];
    self.backgroundUrl = [aDecoder decodeObjectForKey:kZYPullComponentBackgroundUrl];
    self.showTypeId = [aDecoder decodeObjectForKey:kZYPullComponentShowTypeId];
    self.weekDay = [aDecoder decodeObjectForKey:kZYPullComponentWeekDay];
    self.componentType = [aDecoder decodeObjectForKey:kZYPullComponentComponentType];
    self.action = [aDecoder decodeObjectForKey:kZYPullComponentAction];
    self.day = [aDecoder decodeObjectForKey:kZYPullComponentDay];
    self.monthOnly = [aDecoder decodeObjectForKey:kZYPullComponentMonthOnly];
    self.year = [aDecoder decodeObjectForKey:kZYPullComponentYear];
    self.hasVideo = [aDecoder decodeObjectForKey:kZYPullComponentHasVideo];
    self.componentIdentifier = [aDecoder decodeObjectForKey:kZYPullComponentId];
    self.publishColor = [aDecoder decodeObjectForKey:kZYPullComponentPublishColor];
    self.showTime = [aDecoder decodeObjectForKey:kZYPullComponentShowTime];
    self.height = [aDecoder decodeObjectForKey:kZYPullComponentHeight];
    self.itemsCount = [aDecoder decodeObjectForKey:kZYPullComponentItemsCount];
    self.width = [aDecoder decodeObjectForKey:kZYPullComponentWidth];
    self.weekDayColor = [aDecoder decodeObjectForKey:kZYPullComponentWeekDayColor];
    self.trackValue = [aDecoder decodeObjectForKey:kZYPullComponentTrackValue];
    self.collectionCount = [aDecoder decodeObjectForKey:kZYPullComponentCollectionCount];
    self.commentCount = [aDecoder decodeObjectForKey:kZYPullComponentCommentCount];
    self.dayColor = [aDecoder decodeObjectForKey:kZYPullComponentDayColor];
    self.showType = [aDecoder decodeObjectForKey:kZYPullComponentShowType];
    self.componentDescription = [aDecoder decodeObjectForKey:kZYPullComponentDescription];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_monthColor forKey:kZYPullComponentMonthColor];
    [aCoder encodeObject:_showId forKey:kZYPullComponentShowId];
    [aCoder encodeObject:_weekDayBgUrl forKey:kZYPullComponentWeekDayBgUrl];
    [aCoder encodeObject:_picUrl forKey:kZYPullComponentPicUrl];
    [aCoder encodeObject:_showTimeColor forKey:kZYPullComponentShowTimeColor];
    [aCoder encodeObject:_month forKey:kZYPullComponentMonth];
    [aCoder encodeObject:_xingQi forKey:kZYPullComponentXingQi];
    [aCoder encodeObject:_backgroundUrl forKey:kZYPullComponentBackgroundUrl];
    [aCoder encodeObject:_showTypeId forKey:kZYPullComponentShowTypeId];
    [aCoder encodeObject:_weekDay forKey:kZYPullComponentWeekDay];
    [aCoder encodeObject:_componentType forKey:kZYPullComponentComponentType];
    [aCoder encodeObject:_action forKey:kZYPullComponentAction];
    [aCoder encodeObject:_day forKey:kZYPullComponentDay];
    [aCoder encodeObject:_monthOnly forKey:kZYPullComponentMonthOnly];
    [aCoder encodeObject:_year forKey:kZYPullComponentYear];
    [aCoder encodeObject:_hasVideo forKey:kZYPullComponentHasVideo];
    [aCoder encodeObject:_componentIdentifier forKey:kZYPullComponentId];
    [aCoder encodeObject:_publishColor forKey:kZYPullComponentPublishColor];
    [aCoder encodeObject:_showTime forKey:kZYPullComponentShowTime];
    [aCoder encodeObject:_height forKey:kZYPullComponentHeight];
    [aCoder encodeObject:_itemsCount forKey:kZYPullComponentItemsCount];
    [aCoder encodeObject:_width forKey:kZYPullComponentWidth];
    [aCoder encodeObject:_weekDayColor forKey:kZYPullComponentWeekDayColor];
    [aCoder encodeObject:_trackValue forKey:kZYPullComponentTrackValue];
    [aCoder encodeObject:_collectionCount forKey:kZYPullComponentCollectionCount];
    [aCoder encodeObject:_commentCount forKey:kZYPullComponentCommentCount];
    [aCoder encodeObject:_dayColor forKey:kZYPullComponentDayColor];
    [aCoder encodeObject:_showType forKey:kZYPullComponentShowType];
    [aCoder encodeObject:_componentDescription forKey:kZYPullComponentDescription];
}

- (id)copyWithZone:(NSZone *)zone
{
    ZYPullComponent *copy = [[ZYPullComponent alloc] init];
    
    if (copy) {

        copy.monthColor = [self.monthColor copyWithZone:zone];
        copy.showId = [self.showId copyWithZone:zone];
        copy.weekDayBgUrl = [self.weekDayBgUrl copyWithZone:zone];
        copy.picUrl = [self.picUrl copyWithZone:zone];
        copy.showTimeColor = [self.showTimeColor copyWithZone:zone];
        copy.month = [self.month copyWithZone:zone];
        copy.xingQi = [self.xingQi copyWithZone:zone];
        copy.backgroundUrl = [self.backgroundUrl copyWithZone:zone];
        copy.showTypeId = [self.showTypeId copyWithZone:zone];
        copy.weekDay = [self.weekDay copyWithZone:zone];
        copy.componentType = [self.componentType copyWithZone:zone];
        copy.action = [self.action copyWithZone:zone];
        copy.day = [self.day copyWithZone:zone];
        copy.monthOnly = [self.monthOnly copyWithZone:zone];
        copy.year = [self.year copyWithZone:zone];
        copy.hasVideo = [self.hasVideo copyWithZone:zone];
        copy.componentIdentifier = [self.componentIdentifier copyWithZone:zone];
        copy.publishColor = [self.publishColor copyWithZone:zone];
        copy.showTime = [self.showTime copyWithZone:zone];
        copy.height = [self.height copyWithZone:zone];
        copy.itemsCount = [self.itemsCount copyWithZone:zone];
        copy.width = [self.width copyWithZone:zone];
        copy.weekDayColor = [self.weekDayColor copyWithZone:zone];
        copy.trackValue = [self.trackValue copyWithZone:zone];
        copy.collectionCount = [self.collectionCount copyWithZone:zone];
        copy.commentCount = [self.commentCount copyWithZone:zone];
        copy.dayColor = [self.dayColor copyWithZone:zone];
        copy.showType = [self.showType copyWithZone:zone];
        copy.componentDescription = [self.componentDescription copyWithZone:zone];
    }
    
    return copy;
}


@end
