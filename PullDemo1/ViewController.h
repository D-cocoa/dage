//
//  ViewController.h
//  PullDemo1
//
//  Created by 1 on 15/3/1.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModels.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>
{
    ZYPullBaseClass *baseClass;
    
    UITableView *leftView;
    UITableView *rightView;
    
    NSMutableArray *leftIndex;
    NSMutableArray *rightIndex;
    
    float colHeight[2] ;
}
@end
