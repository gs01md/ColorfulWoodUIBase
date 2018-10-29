//
//  ColorfulWoodPointView.m
//  ColorfulWoodPoint
//
//  Created by 大新 on 2018/10/29.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "ColorfulWoodPointView.h"

static const int CWUB_POINT_TAG = 0x123;

@implementation ColorfulWoodPointView
-(void) interface_showTargetView:(UIView*)targetView forCount:(NSInteger) count location:(CWPVDirection)direction{
    if(!targetView) return;
    [self adjustSize:targetView forCount:count location:direction];
    [self buildAttr:targetView];
}

-(void) interface_showTargetView:(UIView*)targetView forCount:(NSInteger) count position:(CGPoint) pos{
    if(count < 0 ){
        self.m_pointRadius = 10;
        self.m_pointWidth = self.m_pointRadius;
        self.layer.cornerRadius = self.m_pointRadius / 2;
    }
    else if(count >= 0 && count <= 99){
        self.m_pointRadius = 16;
        self.m_pointWidth = self.m_pointRadius;
        self.layer.cornerRadius = self.m_pointRadius / 2;
        self.text = [NSString stringWithFormat:@"%ld",(long)count];
    }else{
        self.m_pointRadius = 16;
        self.m_pointWidth = self.m_pointRadius * 1.5;
        self.layer.cornerRadius = self.m_pointRadius / 2;
        self.text = @"99+";
    }
    CGPoint point = [targetView convertPoint:CGPointMake(pos.x,pos.y) toView:[targetView superview]];
    self.frame = CGRectMake(point.x,point.y,self.m_pointWidth, self.m_pointRadius);
    [self buildAttr:targetView];
}

-(void) buildAttr:(UIView*)targetView{
    self.textColor = [UIColor whiteColor];
    self.font = [UIFont systemFontOfSize:9];
    self.textAlignment = NSTextAlignmentCenter;
    self.backgroundColor = self.m_color;
    self.tag = CWUB_POINT_TAG;
    self.layer.masksToBounds = YES;
    [targetView addSubview:self];
}

-(void)adjustSize:(UIView*)targetView forCount:(NSInteger)count location:(CWPVDirection)direction{
    self.m_curDirection = direction;
    if(count < 0 ){
        self.m_pointRadius = 10;
        self.m_pointWidth = self.m_pointRadius;
        self.layer.cornerRadius = self.m_pointRadius / 2;
    }
    else if(count >= 0 && count <= 99){
        self.m_pointRadius = 16;
        self.m_pointWidth = self.m_pointRadius;
        self.layer.cornerRadius = self.m_pointRadius / 2;
        self.text = [NSString stringWithFormat:@"%ld",(long)count];
    }else{
        self.m_pointRadius = 16;
        self.m_pointWidth = self.m_pointRadius * 1.5;
        self.layer.cornerRadius = self.m_pointRadius / 2;
        self.text = @"99+";
    }

    switch(direction){
        case CWPV_LEFT_TOP:
            self.frame = CGRectMake(-self.m_pointRadius / 2 - self.m_offset,-self.m_pointRadius / 2- self.m_offset,
                                    self.m_pointWidth, self.m_pointRadius);
            break;

        case CWPV_LEFT_BOTTOM:
            self.frame = CGRectMake(-self.m_pointRadius / 2- self.m_offset,targetView.frame.size.height - self.m_pointRadius * 0.8+self.m_offset,
                                    self.m_pointWidth, self.m_pointRadius);
            break;

        case CWPV_RIGHT_TOP:
            self.frame = CGRectMake(targetView.frame.size.width - self.m_pointWidth / 2 + self.m_offset, -self.m_pointRadius / 2 - self.m_offset,
                                    self.m_pointWidth, self.m_pointRadius);
            break;

        case CWPV_RIGHT_BOTTOM:
            self.frame = CGRectMake(targetView.frame.size.width - 0.8 * self.m_pointRadius + self.m_offset,
                                    targetView.frame.size.height - self.m_pointRadius * 0.8 + self.m_offset,                                                     self.m_pointWidth, self.m_pointRadius);
            break;
    }
}

-(void) interface_updateBadgeView:(UIView*)targetView forCount:(NSInteger)count{
    UIView *labelCount = [targetView viewWithTag:CWUB_POINT_TAG];
    if(labelCount){
        if(count < 1){
            [labelCount removeFromSuperview];
            return;
        }
        if(count == 1){
            self.text = @"";
        }
        [self adjustSize:targetView forCount:count location:self.m_curDirection];
    }

}

-(void) interface_dissmiss:(UIView*)targetView{
    if(targetView && [targetView viewWithTag:CWUB_POINT_TAG]){
        [[targetView viewWithTag:CWUB_POINT_TAG] removeFromSuperview];
    }
}

#pragma mark - 属性
- (UIColor *)m_color{

    if (!_m_color) {
        _m_color = [UIColor redColor];
    }
    return _m_color;
}
@end
