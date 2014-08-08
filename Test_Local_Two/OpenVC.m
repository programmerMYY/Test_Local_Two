//
//  OpenVC.m
//  Test_Local_Two
//
//  Created by admin on 14-8-7.
//  Copyright (c) 2014年 com.yongche. All rights reserved.
//

#import "OpenVC.h"
#import "AppDelegate.h"
@interface OpenVC ()

@end

@implementation OpenVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)switchAction:(id)sender {
    if ( [[[YCLanguageTools shareInstance] defineUserLanguage] isEqualToString:@"zh-Hans"] ) {
        [[YCLanguageTools shareInstance]  saveDefineUserLanguage:@"en"] ;
    }else{
        [[YCLanguageTools shareInstance]  saveDefineUserLanguage:@"zh-Hans"] ;
    }
    
    // reload the storyboard in the selected language
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[YCLanguageTools baseBundel]];
    // reload the view controllers
    UIViewController *test1 = [storyBoard instantiateViewControllerWithIdentifier:@"test1"];
    UIViewController *test2 = [storyBoard instantiateViewControllerWithIdentifier:@"test2"];
    UIViewController *test3 = [storyBoard instantiateViewControllerWithIdentifier:@"test3"];
    UIViewController *open = [storyBoard instantiateViewControllerWithIdentifier:@"open"];
    // set them
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    //此处重新加载app rootViewController.我使用tabbar
    UITabBarController* tabBar = (UITabBarController *)appDelegate.window.rootViewController;
    //这里可以实现 用户切换语言后 依然可以在 当前所在页面
    NSMutableArray *tabArrs = [NSMutableArray arrayWithArray:@[test1, test2,test3,open]];
    tabBar.viewControllers = tabArrs;
    [tabArrs enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([self class]==[[tabArrs objectAtIndex:idx] class]) {
            tabBar.selectedIndex = idx;
        }
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
