//
//  FavoritesViewController.m
//  ContactChatApp
//
//  Created by Daniel Kwiatkowski on 2015-04-24.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import "FavoritesViewController.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Favorites";
        self.tabBarItem.image = [UIImage imageNamed:@"Favourite_icon"];
    }
    return self;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
