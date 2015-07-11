//
//  ViewController.m
//  PullDemo1
//
//  Created by 1 on 15/3/1.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "PullViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
        leftIndex = [NSMutableArray array];
        rightIndex = [NSMutableArray array];
        colHeight[0] = 0.0f;
        colHeight[1] = 0.0f;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    float height = self.view.frame.size.height;
    leftView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 160.0f, height)];
    leftView.delegate = self;
    leftView.dataSource = self;
    leftView.tag = 100;
    [leftView registerClass:[PullViewCell class] forCellReuseIdentifier:@"cell_1"];
    
    [self.view addSubview:leftView];
    
    rightView = [[UITableView alloc] initWithFrame:CGRectMake(160, 0, 160.0f, height)];
    rightView.delegate = self;
    rightView.dataSource = self;
    rightView.tag = 101;
    [rightView registerClass:[PullViewCell class] forCellReuseIdentifier:@"cell_1"];
    [self.view addSubview:rightView];
    
    
    AFHTTPRequestOperationManager *manger = [AFHTTPRequestOperationManager manager];
    
    NSString *urlString =@"http://api2.hichao.com/stars?category=全部";
    NSString * encodedString = (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes( kCFAllocatorDefault, (CFStringRef)urlString, NULL, NULL,  kCFStringEncodingUTF8 );
    
    [manger GET:encodedString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        baseClass = [ZYPullBaseClass modelObjectWithDictionary:responseObject];
        [self loadPullView];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
    
}

- (void)loadPullView{
    

    int i = 0;
    for (ZYPullItems *item in baseClass.data.items)
    {
        if (!item.component.picUrl)
        {
            continue;
        }
        NSLog(@"%@ %@ %@",item.width,item.height,item.component.picUrl);
        
        float width  = [item.width floatValue];
        float height  = [item.height floatValue];
        
        height = 150.0f * height / width;
        width = 150.0f;
        
        int index = colHeight[0] <= colHeight[1]?0:1;
        colHeight[index] += height;
       
        
        
        //将当前的索引添加到相应的数组中。
        if (index == 0) {
            [leftIndex addObject:[NSNumber numberWithInt:i]];
        }else{
            [rightIndex addObject:[NSNumber numberWithInt:i]];
        }
        i++;
    }
    NSLog(@"%@\n\n\%@",leftIndex,rightIndex);
    
    //刷新表
    [leftView reloadData];
    [rightView reloadData];
    
    
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    if (baseClass.data.items.count <= 0) {
        return 0;
    }
    
    if (tableView.tag == 100) {
        return leftIndex.count;
    }else{
        return rightIndex.count;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PullViewCell *cell = (PullViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell_1" forIndexPath:indexPath];
    
    int index ;
    if (tableView.tag == 100) {
        index = [leftIndex[indexPath.row] intValue];
    }else{
        index = [rightIndex[indexPath.row] intValue];
    }
    
    NSLog(@"--------");
    ZYPullItems *item = baseClass.data.items[index];
    cell.items = item;
    return cell;


}
#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //纪录在数组中的索引
    int index ;
    //需要添加的高度（其实就是label的高度）.
    float newH = 44.0f;
    if (tableView.tag == 100) {
        //当前左视图，从left中获取索引
        index = [leftIndex[indexPath.row] intValue];
        //计算最后一个表单元格
        if(indexPath.row == (leftIndex.count-1)){
            //计算高度差
            if (colHeight[0]<colHeight[1]) {
                newH +=( colHeight[1]-colHeight[0]);
            }
        }
    }else{
        //当前右视图，从right中获取索引
        index = [rightIndex[indexPath.row] intValue];
        //计算最后一个单元格
        if(indexPath.row == (rightIndex.count-1)){
            //计算高度差
            if (colHeight[0]>colHeight[1]) {
            newH +=( colHeight[0]-colHeight[1]);
            }
        }
    }
    
    //获取表单元格的高度
    ZYPullItems *item = baseClass.data.items[index];
    float width  = [item.width floatValue];
    float height  = [item.height floatValue];
    
    height = 150.0f * height / width;
    
    return height+newH;
    
}

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //让俩个表连动。
//    NSLog(@"left_%f",scrollView.contentOffset.y);
    if (scrollView == leftView) {
        //左边动，就让右边跟着动
        [rightView setContentOffset:scrollView.contentOffset];
    }else{
        //右动，左跟着动
        [leftView setContentOffset:scrollView.contentOffset];
    }

}



@end
