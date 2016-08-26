//
//  ViewController.m
//  CYGuidanceView-master
//
//  Created by Gocy on 16/8/26.
//  Copyright © 2016年 Gocy. All rights reserved.
//

#import "ViewController.h"
#import "CYGuidanceView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *orange1;
@property (weak, nonatomic) IBOutlet UIView *orange2;
@property (weak, nonatomic) IBOutlet UIView *blue;
@property (weak, nonatomic) IBOutlet UIView *pink;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self addGuidanceSteps];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)addGuidanceSteps{
    CYGuidanceView *guide = [CYGuidanceView new];
    
    // orange1 and orange2
    // basic usage
    UILabel *oranLabel1 = [self descriptionLabel];
    oranLabel1.text = @"Orange 1";
    [oranLabel1 sizeToFit];
    
    GuideInfo *oran1 = [[GuideInfo alloc] initWithGuideRect:self.orange1.frame descriptionView:oranLabel1 verticalPosition:VerticalPosition_Top horizontalPosition:HorizontalPosition_Middle cornerRadius:0];
    
    UILabel *oranLabel2 = [self descriptionLabel];
    oranLabel2.text = @"Orange 2";
    [oranLabel2 sizeToFit];
    GuideInfo *oran2 = [[GuideInfo alloc] initWithGuideRect:self.orange2.frame descriptionView:oranLabel2 verticalPosition:VerticalPosition_Middle horizontalPosition:HorizontalPosition_Left cornerRadius:0];
    
    //blue
    //rounded corner & custom position.
    UILabel *blueLabel = [self descriptionLabel];
    blueLabel.text = @"Blue";
    [blueLabel sizeToFit];
    CGPoint offset = CGPointMake(8,8);
    GuideInfo *blueInfo = [[GuideInfo alloc] initWithGuideRect:CGRectInset(self.blue.frame, -8, -8) descriptionView:blueLabel relativePosition:offset cornerRadius:10];
    
    
    //pink
    //any view can be your description view !
    UIImageView *smileFace = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"smile"]];
    [smileFace sizeToFit];
    smileFace.layer.cornerRadius = 12;
    GuideInfo *pinkInfo = [[GuideInfo alloc] initWithGuideRect:CGRectInset(self.pink.frame ,-6,-6) descriptionView:smileFace verticalPosition:VerticalPosition_Top horizontalPosition:HorizontalPosition_Middle cornerRadius:6];
    
    // add step
    [guide addStep:@[oran1,oran2]];
    [guide addStep:@[blueInfo]];
    [guide addStep:@[pinkInfo]];
    [guide showInView:self.view animated:YES];
    
}

-(UILabel *)descriptionLabel{
    UILabel *label = [UILabel new];
    label.font = [UIFont systemFontOfSize:15 weight:UIFontWeightMedium];
    label.textColor = [UIColor whiteColor];
    
    return label;
}

@end
