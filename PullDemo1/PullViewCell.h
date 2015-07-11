//
//  PullViewCell.h
//  PullDemo1
//
//  Created by 1 on 15/3/1.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModels.h"
@interface PullViewCell : UITableViewCell
{
    
    UIImageView *_imageView;
    UILabel *_titleLabel;

}
@property (nonatomic,strong) ZYPullItems *items;
@end
