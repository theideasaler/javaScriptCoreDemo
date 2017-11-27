//
//  ViewController.h
//  webJavascriptSample
//
//  Created by Rock_Neo on 5/6/17.
//  Copyright © 2017 Rock_Neo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface ViewController : UIViewController <JSExport>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (weak, nonatomic) IBOutlet UIButton *flyButton;
@property (weak, nonatomic) IBOutlet UIButton *downButton;

@property (weak, nonatomic) IBOutlet UIButton *reStart;
-(IBAction)reStartButton;

@end

