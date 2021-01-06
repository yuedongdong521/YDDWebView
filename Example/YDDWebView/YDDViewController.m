//
//  YDDViewController.m
//  YDDWebView
//
//  Created by yuedongdong521 on 01/06/2021.
//  Copyright (c) 2021 yuedongdong521. All rights reserved.
//

#import "YDDViewController.h"
#import "YDDWebView.h"


@interface YDDViewController ()

@property (nonatomic, strong) YDDWebView *webView;

@end

@implementation YDDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    _webView = [[YDDWebView alloc] initWithFrame:CGRectMake(20, 100, 300, 300)];
    [self.view addSubview:_webView];
    NSURL *fileURL = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"testhtml" ofType:@"html"]];
    [_webView startLoadFileURL:fileURL accessURL:[NSURL fileURLWithPath:[NSBundle mainBundle].bundlePath]];
    
    [_webView addJavaScriptAction:@"oc_buttonAction" actionBlock:^(id  _Nonnull body) {
        NSLog(@"oc_buttonAction : %@", body);
    }];
    
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(20, 450, 100, 50);
    [btn setTitle:@"调用js方法" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)btnAction
{
    [_webView callJavaScriptAction:@"ocAction('已调用')" completionHandler:^(id  _Nonnull result, NSError * _Nonnull error) {
        NSLog(@"result : %@, code ： %ld", result, (long)error.code);
    }];
}

- (void)dealloc
{
    [_webView removeJavascrpitActionAll];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
