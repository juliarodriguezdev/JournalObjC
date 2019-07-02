//
//  EntryListTableViewController.m
//  JournalObjC
//
//  Created by Julia Rodriguez on 7/1/19.
//  Copyright © 2019 Julia Rodriguez. All rights reserved.
//

#import "EntryListTableViewController.h"
#import "Entry.h"
#import "EntryDetailViewController.h"
#import "EntryController.h"


@interface EntryListTableViewController ()

@end

@implementation EntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
static NSString * const reuseIdentifier = @"entryCell";

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return EntryController.sharedInstance.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    Entry *entry = EntryController.sharedInstance.entries[indexPath.row];
    cell.textLabel.text = entry.title;
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
       // let entryToRemove = 
        Entry *entryToRemove = EntryController.sharedInstance.entries[indexPath.row];
        [EntryController.sharedInstance removeEntry:entryToRemove];
        
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"toDetailVC"]) {
        NSIndexPath *selectedIndex = self.tableView.indexPathForSelectedRow;
        EntryDetailViewController *destinationVC = [segue destinationViewController];
        Entry *entry = EntryController.sharedInstance.entries[selectedIndex.row];
        destinationVC.entry = entry;
        
    }
}


@end
