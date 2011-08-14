//
//  EditEmailVC.m
//  NSUserDefaultsTutorial
//
//  Created by Wa-jiw Casey on 8/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EditEmailVC.h"


@implementation EditEmailVC

@synthesize myEmail;

-(IBAction) saveEmail:(id)sender
{
    
    if([myEmail.text length] == 0)
    {
        NSLog(@"%@", @"No Email");
    }
    else
    {
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        
        [prefs setObject:myEmail.text forKey:@"MyEmail"];
        [prefs synchronize];
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *email = [[NSUserDefaults standardUserDefaults] stringForKey:@"MyEmail"];
    
    if(email != nil)
    {
        myEmail.text = email;
        [email release];
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
