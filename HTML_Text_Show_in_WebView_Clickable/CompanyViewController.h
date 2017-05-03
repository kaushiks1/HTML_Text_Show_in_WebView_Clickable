//
//  CompanyViewController.h
//  HTML_Text_Show_in_WebView_Clickable
//
//  Created by SILICON on 23/08/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"
#import "Utility.h"

@interface CompanyViewController : ViewController

@property (strong, nonatomic) NSMutableDictionary *dictionaryJSON;

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
