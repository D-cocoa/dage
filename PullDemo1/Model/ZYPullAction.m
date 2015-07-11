//
//  ZYPullAction.m
//
//  Created by   on 15/3/1
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ZYPullAction.h"
#import "ZYPullItemPicUrlList.h"


NSString *const kZYPullActionId = @"id";
NSString *const kZYPullActionTrackValue = @"trackValue";
NSString *const kZYPullActionVideoUrl = @"videoUrl";
NSString *const kZYPullActionItemPicUrlList = @"itemPicUrlList";
NSString *const kZYPullActionDescription = @"description";
NSString *const kZYPullActionWidth = @"width";
NSString *const kZYPullActionTitle = @"title";
NSString *const kZYPullActionUserId = @"userId";
NSString *const kZYPullActionUserName = @"userName";
NSString *const kZYPullActionActionType = @"actionType";
NSString *const kZYPullActionCollectionCount = @"collectionCount";
NSString *const kZYPullActionHeight = @"height";
NSString *const kZYPullActionCommentCount = @"commentCount";
NSString *const kZYPullActionUserPicUrl = @"userPicUrl";
NSString *const kZYPullActionNormalPicUrl = @"normalPicUrl";
NSString *const kZYPullActionDateTime = @"dateTime";


@interface ZYPullAction ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ZYPullAction

@synthesize actionIdentifier = _actionIdentifier;
@synthesize trackValue = _trackValue;
@synthesize videoUrl = _videoUrl;
@synthesize itemPicUrlList = _itemPicUrlList;
@synthesize actionDescription = _actionDescription;
@synthesize width = _width;
@synthesize title = _title;
@synthesize userId = _userId;
@synthesize userName = _userName;
@synthesize actionType = _actionType;
@synthesize collectionCount = _collectionCount;
@synthesize height = _height;
@synthesize commentCount = _commentCount;
@synthesize userPicUrl = _userPicUrl;
@synthesize normalPicUrl = _normalPicUrl;
@synthesize dateTime = _dateTime;


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
            self.actionIdentifier = [self objectOrNilForKey:kZYPullActionId fromDictionary:dict];
            self.trackValue = [self objectOrNilForKey:kZYPullActionTrackValue fromDictionary:dict];
            self.videoUrl = [self objectOrNilForKey:kZYPullActionVideoUrl fromDictionary:dict];
    NSObject *receivedZYPullItemPicUrlList = [dict objectForKey:kZYPullActionItemPicUrlList];
    NSMutableArray *parsedZYPullItemPicUrlList = [NSMutableArray array];
    if ([receivedZYPullItemPicUrlList isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedZYPullItemPicUrlList) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedZYPullItemPicUrlList addObject:[ZYPullItemPicUrlList modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedZYPullItemPicUrlList isKindOfClass:[NSDictionary class]]) {
       [parsedZYPullItemPicUrlList addObject:[ZYPullItemPicUrlList modelObjectWithDictionary:(NSDictionary *)receivedZYPullItemPicUrlList]];
    }

    self.itemPicUrlList = [NSArray arrayWithArray:parsedZYPullItemPicUrlList];
            self.actionDescription = [self objectOrNilForKey:kZYPullActionDescription fromDictionary:dict];
            self.width = [self objectOrNilForKey:kZYPullActionWidth fromDictionary:dict];
            self.title = [self objectOrNilForKey:kZYPullActionTitle fromDictionary:dict];
            self.userId = [self objectOrNilForKey:kZYPullActionUserId fromDictionary:dict];
            self.userName = [self objectOrNilForKey:kZYPullActionUserName fromDictionary:dict];
            self.actionType = [self objectOrNilForKey:kZYPullActionActionType fromDictionary:dict];
            self.collectionCount = [self objectOrNilForKey:kZYPullActionCollectionCount fromDictionary:dict];
            self.height = [self objectOrNilForKey:kZYPullActionHeight fromDictionary:dict];
            self.commentCount = [self objectOrNilForKey:kZYPullActionCommentCount fromDictionary:dict];
            self.userPicUrl = [self objectOrNilForKey:kZYPullActionUserPicUrl fromDictionary:dict];
            self.normalPicUrl = [self objectOrNilForKey:kZYPullActionNormalPicUrl fromDictionary:dict];
            self.dateTime = [self objectOrNilForKey:kZYPullActionDateTime fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.actionIdentifier forKey:kZYPullActionId];
    [mutableDict setValue:self.trackValue forKey:kZYPullActionTrackValue];
    [mutableDict setValue:self.videoUrl forKey:kZYPullActionVideoUrl];
    NSMutableArray *tempArrayForItemPicUrlList = [NSMutableArray array];
    for (NSObject *subArrayObject in self.itemPicUrlList) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForItemPicUrlList addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForItemPicUrlList addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForItemPicUrlList] forKey:kZYPullActionItemPicUrlList];
    [mutableDict setValue:self.actionDescription forKey:kZYPullActionDescription];
    [mutableDict setValue:self.width forKey:kZYPullActionWidth];
    [mutableDict setValue:self.title forKey:kZYPullActionTitle];
    [mutableDict setValue:self.userId forKey:kZYPullActionUserId];
    [mutableDict setValue:self.userName forKey:kZYPullActionUserName];
    [mutableDict setValue:self.actionType forKey:kZYPullActionActionType];
    [mutableDict setValue:self.collectionCount forKey:kZYPullActionCollectionCount];
    [mutableDict setValue:self.height forKey:kZYPullActionHeight];
    [mutableDict setValue:self.commentCount forKey:kZYPullActionCommentCount];
    [mutableDict setValue:self.userPicUrl forKey:kZYPullActionUserPicUrl];
    [mutableDict setValue:self.normalPicUrl forKey:kZYPullActionNormalPicUrl];
    [mutableDict setValue:self.dateTime forKey:kZYPullActionDateTime];

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

    self.actionIdentifier = [aDecoder decodeObjectForKey:kZYPullActionId];
    self.trackValue = [aDecoder decodeObjectForKey:kZYPullActionTrackValue];
    self.videoUrl = [aDecoder decodeObjectForKey:kZYPullActionVideoUrl];
    self.itemPicUrlList = [aDecoder decodeObjectForKey:kZYPullActionItemPicUrlList];
    self.actionDescription = [aDecoder decodeObjectForKey:kZYPullActionDescription];
    self.width = [aDecoder decodeObjectForKey:kZYPullActionWidth];
    self.title = [aDecoder decodeObjectForKey:kZYPullActionTitle];
    self.userId = [aDecoder decodeObjectForKey:kZYPullActionUserId];
    self.userName = [aDecoder decodeObjectForKey:kZYPullActionUserName];
    self.actionType = [aDecoder decodeObjectForKey:kZYPullActionActionType];
    self.collectionCount = [aDecoder decodeObjectForKey:kZYPullActionCollectionCount];
    self.height = [aDecoder decodeObjectForKey:kZYPullActionHeight];
    self.commentCount = [aDecoder decodeObjectForKey:kZYPullActionCommentCount];
    self.userPicUrl = [aDecoder decodeObjectForKey:kZYPullActionUserPicUrl];
    self.normalPicUrl = [aDecoder decodeObjectForKey:kZYPullActionNormalPicUrl];
    self.dateTime = [aDecoder decodeObjectForKey:kZYPullActionDateTime];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_actionIdentifier forKey:kZYPullActionId];
    [aCoder encodeObject:_trackValue forKey:kZYPullActionTrackValue];
    [aCoder encodeObject:_videoUrl forKey:kZYPullActionVideoUrl];
    [aCoder encodeObject:_itemPicUrlList forKey:kZYPullActionItemPicUrlList];
    [aCoder encodeObject:_actionDescription forKey:kZYPullActionDescription];
    [aCoder encodeObject:_width forKey:kZYPullActionWidth];
    [aCoder encodeObject:_title forKey:kZYPullActionTitle];
    [aCoder encodeObject:_userId forKey:kZYPullActionUserId];
    [aCoder encodeObject:_userName forKey:kZYPullActionUserName];
    [aCoder encodeObject:_actionType forKey:kZYPullActionActionType];
    [aCoder encodeObject:_collectionCount forKey:kZYPullActionCollectionCount];
    [aCoder encodeObject:_height forKey:kZYPullActionHeight];
    [aCoder encodeObject:_commentCount forKey:kZYPullActionCommentCount];
    [aCoder encodeObject:_userPicUrl forKey:kZYPullActionUserPicUrl];
    [aCoder encodeObject:_normalPicUrl forKey:kZYPullActionNormalPicUrl];
    [aCoder encodeObject:_dateTime forKey:kZYPullActionDateTime];
}

- (id)copyWithZone:(NSZone *)zone
{
    ZYPullAction *copy = [[ZYPullAction alloc] init];
    
    if (copy) {

        copy.actionIdentifier = [self.actionIdentifier copyWithZone:zone];
        copy.trackValue = [self.trackValue copyWithZone:zone];
        copy.videoUrl = [self.videoUrl copyWithZone:zone];
        copy.itemPicUrlList = [self.itemPicUrlList copyWithZone:zone];
        copy.actionDescription = [self.actionDescription copyWithZone:zone];
        copy.width = [self.width copyWithZone:zone];
        copy.title = [self.title copyWithZone:zone];
        copy.userId = [self.userId copyWithZone:zone];
        copy.userName = [self.userName copyWithZone:zone];
        copy.actionType = [self.actionType copyWithZone:zone];
        copy.collectionCount = [self.collectionCount copyWithZone:zone];
        copy.height = [self.height copyWithZone:zone];
        copy.commentCount = [self.commentCount copyWithZone:zone];
        copy.userPicUrl = [self.userPicUrl copyWithZone:zone];
        copy.normalPicUrl = [self.normalPicUrl copyWithZone:zone];
        copy.dateTime = [self.dateTime copyWithZone:zone];
    }
    
    return copy;
}


@end
