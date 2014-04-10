//
//  DemoViewController.m
//  MantleDemo
//
//  Created by FFF on 14-4-8.
//  Copyright (c) 2014年 Liu Zhuang. All rights reserved.
//

#import "DemoViewController.h"
#import "NTPhoto.h"
#import "EMPerson.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

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
    self.view.backgroundColor =  [UIColor whiteColor];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Person" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
    EMPerson *person = [MTLJSONAdapter modelOfClass:[EMPerson class] fromJSONDictionary:dic error:nil];
    
    NSLog(@"person: %@", person);
    
    NSDictionary *dicee = [MTLJSONAdapter JSONDictionaryFromModel:person];
    
    NSLog(@"dicee : %@", dicee);
    
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
