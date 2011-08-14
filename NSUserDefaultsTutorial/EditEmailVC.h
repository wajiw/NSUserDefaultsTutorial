//
//  EditEmailVC.h
//  NSUserDefaultsTutorial
//
//  Created by Wa-jiw Casey on 8/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface EditEmailVC : UIViewController {
    IBOutlet UITextField *myEmail;
}

@property (nonatomic, retain) IBOutlet UITextField *myEmail;

-(IBAction) saveEmail:(id)sender;

@end
