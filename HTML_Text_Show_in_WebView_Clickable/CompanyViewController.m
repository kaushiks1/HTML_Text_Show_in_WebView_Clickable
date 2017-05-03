//
//  CompanyViewController.m
//  HTML_Text_Show_in_WebView_Clickable
//
//  Created by SILICON on 23/08/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "CompanyViewController.h"

@interface CompanyViewController ()

@end

@implementation CompanyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dictionaryJSON = [[NSMutableDictionary alloc]init];
    _dictionaryJSON = [Utility getValueFromJsonFile_FileName:@"CompanyFile" FileType:@"json"];
    
    NSLog(@"%@",_dictionaryJSON);
    NSLog(@"%@",[[_dictionaryJSON objectForKey:@"data"]valueForKeyPath:@"content.static"]);
    
    NSString *string = [[_dictionaryJSON objectForKey:@"data"]valueForKeyPath:@"content.static"];
    NSLog(@"%@",string);
    
    
    [_webView loadHTMLString:string baseURL:nil];
    
    
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
