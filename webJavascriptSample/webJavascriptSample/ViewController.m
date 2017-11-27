//
//  ViewController.m
//  webJavascriptSample
//
//  Created by Rock_Neo on 5/6/17.
//  Copyright © 2017 Rock_Neo. All rights reserved.
//

#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    NSURL *htmlURL = [[NSBundle mainBundle] URLForResource:@"index.html" withExtension:nil];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:htmlURL];
    [_webView loadRequest:requestURL];
//    JSContext *context = [self.webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    [self.flyButton addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchDown];
    [self.flyButton addTarget:self action:@selector(buttonRelease) forControlEvents:UIControlEventTouchUpInside|UIControlEventTouchUpOutside];
    
   
    
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)buttonClick{
    JSContext *context = [self.webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    NSString *buttonFly = @"accelerate(0.05)";
   
    [context evaluateScript:buttonFly];
    NSLog(@"test1");
    
}
-(void)buttonRelease{
    JSContext *context = [self.webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    NSString *buttonDown = @"accelerate(-0.2)";
    
    [context evaluateScript:buttonDown];
    NSLog(@"test2");
    
}


-(void)reStartButton{
    JSContext *context = [self.webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    [context evaluateScript:@"startGame()"];
   

    
}

@end
