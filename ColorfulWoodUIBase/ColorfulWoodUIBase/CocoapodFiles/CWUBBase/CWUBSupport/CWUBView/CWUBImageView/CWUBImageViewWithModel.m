//
//  CWUBImageViewWithModel.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/22.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBImageViewWithModel.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "CWUBUITapGestureRecognizer.h"

@interface CWUBImageViewWithModel()
@property(nonatomic, strong)CWUBUITapGestureRecognizer *m_tap;
@end

@implementation CWUBImageViewWithModel

-(instancetype)initWithModel:(CWUBImageInfo*)model{

    if (self = [super init]) {
        [self interface_update:model];
    }

    return self;
}

-(void) interface_update:(CWUBImageInfo*)model{

    self.m_model = model;

    if (model) {

        if (model.m_imgUrl && model.m_imgUrl.length>0) {

            /**
             * 如果原来已经显示了图片，就不要再显示默认图片,默认图片优先显示UIImage图片
             */
            UIImage * img = self.m_model.m_defaultImg?self.m_model.m_defaultImg:
            (self.image?self.image:[UIImage imageNamed:model.m_imgName]);
            [self sd_setImageWithURL:[NSURL URLWithString:model.m_imgUrl] placeholderImage:img completed:nil];

        }else{
            /**
             * 优先显示UIImage图片
             */
            if (self.m_model.m_defaultImg) {
                [self setImage:self.m_model.m_defaultImg];
            } else {
                [self setImage:[UIImage imageNamed:model.m_imgName]];
            }
        }

        self.clipsToBounds = model.m_isClipToBounds;
        [self setClipsToBounds:model.m_isClipToBounds];

        self.contentMode = model.m_contentMode;

        if (model.m_cornerInfo.m_cornerRadius>0 && model.m_cornerInfo.m_cornerWidth>0) {

            self.layer.cornerRadius = model.m_cornerInfo.m_cornerRadius;
            self.layer.borderWidth = model.m_cornerInfo.m_cornerWidth;
            self.layer.borderColor = [model.m_cornerInfo.m_cornerColor CGColor];
            self.layer.masksToBounds = YES;

        }else{

            if (self.m_model.m_isCircle) {
                self.layer.cornerRadius = self.m_model.m_width/2.;
                self.layer.masksToBounds = YES;

            }else{
                self.layer.cornerRadius = 0.;
                self.layer.borderWidth = 0.;
                self.layer.borderColor = [[UIColor clearColor] CGColor];
                self.layer.masksToBounds = NO;
            }
        }

        if (model.m_color_backGround) {
            self.backgroundColor = model.m_color_backGround;
        }

        if ([model.m_canUserInteract isEqualToString:@"1"]) {
            self.userInteractionEnabled = YES;
        } else {
            self.userInteractionEnabled = NO;
        }

        self.hidden = model.m_isHidden;

        if(self.m_model.m_modelPoint){

            ColorfulWoodPointView *pointView0 = [[ColorfulWoodPointView alloc] init];
            pointView0.m_offset = self.m_model.m_modelPoint.m_offset;
            pointView0.m_pointRadius = self.m_model.m_modelPoint.m_size;
            pointView0.m_color = self.m_model.m_modelPoint.m_color;
            [pointView0 interface_showTargetView:self forCount:self.m_model.m_modelPoint.m_count location:self.m_model.m_modelPoint.m_direct];
        }else{
            ColorfulWoodPointView *pointView0 = [[ColorfulWoodPointView alloc] init];
            [pointView0 interface_dissmiss:self];
        }

        if (self.m_model.m_event_opt_code.length > 0) {
            self.userInteractionEnabled = YES;
            [self performSelector:@selector(func_setEvent) withObject:self.m_model.m_event_opt_code afterDelay:1.];
        }else{
            self.userInteractionEnabled = NO;
        }

    }
}

#pragma mark - 属性
- (UIViewController *)m_controller{

    if(!_m_controller){
        _m_controller = [self inner_findViewController];
    }

    return _m_controller;
}


#pragma mark - 功能
/**
 * 设置该控件的点击事件
 */
- (void)func_setEvent{

    NSString * code = [self.m_model.m_event_opt_code stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if(code.length > 0 ){

        if(self.m_controller){
            self.m_tap = [[CWUBUITapGestureRecognizer alloc] initWithTarget:self.m_controller action:@selector(CWUBImageView_clickEvent:)];
            self.m_tap.m_event_opt_code = code;
            [self addGestureRecognizer:self.m_tap];
        }

    }

}

/**
 * 不执行，因为在 self.m_controller 中执行
 */
- (void)CWUBImageView_clickEvent:(UITapGestureRecognizer*)tap{
    NSLog(@"消除警告");
}

/**
 * 获取控制器，获取视图控制器
 */
- (UIViewController *)inner_findViewController{

    for (UIView* next = self; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}

#pragma mark - 接口

/**
 * 获取点击事件对应的标识
 */
+ (NSString *)interface_getEventCode:(UITapGestureRecognizer*)tap{

    NSString * code = @"";

    if(tap && [tap isKindOfClass:[UITapGestureRecognizer class]] && [tap.view isKindOfClass:[CWUBImageViewWithModel class]]){
        CWUBImageViewWithModel * imgView =  (CWUBImageViewWithModel *)tap.view;

        if(imgView){
            code = imgView.m_model.m_event_opt_code;
        }
    }

    return code;
}
@end
