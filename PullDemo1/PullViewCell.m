//
//  PullViewCell.m
//  PullDemo1
//
//  Created by 1 on 15/3/1.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "PullViewCell.h"
#import "UIImageView+WebCache.h"

@implementation PullViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        NSLog(@"alloc!!!!!");
        
        
        _imageView = [[UIImageView alloc] init];
        [self addSubview:_imageView];
        
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.backgroundColor = [UIColor whiteColor];
        _titleLabel.textColor = [UIColor blackColor];
        [self addSubview:_titleLabel];
        
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setItems:(ZYPullItems *)items
{
    _items = items;
    
    [_imageView setImageWithURL:[NSURL URLWithString:_items.component.picUrl]];
    
    _titleLabel.text = _items.component.componentDescription;
    
    float width  = [_items.width floatValue];
    float height  = [_items.height floatValue];
    
    height = 150.0f * height / width;

    _imageView.frame = CGRectMake(0, 0, 150.0f, height);
    _titleLabel.frame = CGRectMake(0.0f, height, 150.0f, 44.0f);
    


}
@end
