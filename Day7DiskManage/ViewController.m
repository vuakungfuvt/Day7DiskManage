//
//  ViewController.m
//  Day7DiskManage
//
//  Created by ThanhTung on 3/27/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import "ViewController.h"
#import "Song.h"

@interface ViewController ()
@property (nonatomic) NSMutableSet *mutSet;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Song *song1 = [[Song alloc]initWithTitle:@"Happy New Year" andSingle:@"ABBA" andYear:2000 andGenre:@"New Year"];
    Song *song2 = [[Song alloc]initWithTitle:@"My love" andSingle:@"WestLife" andYear:2010 andGenre:@"love"];
    Song *song3 = [[Song alloc]initWithTitle:@"Ngoi ben em" andSingle:@"Phan Dinh Tung" andYear:2000 andGenre:@"Tinh yeu"];
    Song *song4 = [[Song alloc]initWithTitle:@"If I let you go" andSingle:@"WestLife" andYear:2008 andGenre:@"Sex toy"];
     Song *song5 = [[Song alloc]initWithTitle:@"Moah" andSingle:@"Alexander" andYear:2010 andGenre:@"New Year"];
    self.mutSet = [[NSMutableSet alloc] initWithObjects:song1,song2,song3,song4,song4, nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)search:(id)sender {
    NSString *titleSearchString = self.txtTitle.text;
    NSString *singerSearchString = self.txtSearch.text;
    NSPredicate *searchPredicate = [NSPredicate predicateWithFormat: @"(title CONTAINS[cd] %@) OR (single CONTAINS[cd] %@) ", titleSearchString, singerSearchString ];
    
    NSSet *results = [self.mutSet filteredSetUsingPredicate:  searchPredicate];
    
    for(Song *s in results){
        NSLog (@"%@", s);
        
    }

}
@end
