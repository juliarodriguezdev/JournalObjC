//
//  EntryDetailViewController.m
//  JournalObjC
//
//  Created by Julia Rodriguez on 7/1/19.
//  Copyright © 2019 Julia Rodriguez. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"


@interface EntryDetailViewController() <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *textNameField;

@property (weak, nonatomic) IBOutlet UITextView *textBodyField;

@end

@implementation EntryDetailViewController


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return true;
    

    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews:_entry];
}

-(void)updateViews:(Entry *)entry {
     if ((entry = entry)) {
         _textNameField.text = entry.title;
         _textBodyField.text = entry.bodyText;
        }
     }

- (IBAction)clearButtonTapped:(id)sender {
    _textBodyField.text = @"";
    _textNameField.text = @"";
}

- (IBAction)saveButtonTapped:(id)sender {
    
    NSString *title = _textNameField.text;
    NSString *bodyText = _textBodyField.text;
    
    if (_entry != nil) {
        [EntryController.sharedInstance updateEntry:_entry title:title body:bodyText];
    }
    else {
        [EntryController.sharedInstance createEntry:title body:bodyText];
    }
    
    [self.navigationController popViewControllerAnimated:true];
}


@end
