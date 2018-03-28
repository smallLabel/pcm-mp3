//
//  ViewController.m
//  SLPcmToMp3
//
//  Created by smallLabel on 2018/3/26.
//  Copyright © 2018年 Fengmap. All rights reserved.
//

#import "ViewController.h"
#include "SLMp3Encoder.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"pcm"];
    NSString *targetFilePath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    targetFilePath = [targetFilePath stringByAppendingString:@"test.mp3"];
    
    Mp3Encoder *encoder = new Mp3Encoder();
    encoder->init(path.UTF8String, targetFilePath.UTF8String, 48000, 2, 16);
    encoder->encoder();
    delete encoder;
    
    NSLog(@"%@", targetFilePath);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
