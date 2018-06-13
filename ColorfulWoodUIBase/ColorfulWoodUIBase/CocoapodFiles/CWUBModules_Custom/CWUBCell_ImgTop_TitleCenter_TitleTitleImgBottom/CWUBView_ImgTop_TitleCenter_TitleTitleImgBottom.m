//
//  CWUBView_ImgTop_TitleCenter_TitleTitleImgBottom.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBView_ImgTop_TitleCenter_TitleTitleImgBottom.h"

/**
 * 用于画四个角的圆弧
 */
#define RECT_ROUND 8.

@interface CWUBView_ImgTop_TitleCenter_TitleTitleImgBottom ()
@property (nonatomic, strong) CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model *m_model;
@end

@implementation CWUBView_ImgTop_TitleCenter_TitleTitleImgBottom

- (instancetype) initWithModel:(CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model*)model{

    if (self = [super init]) {
        self.m_model = model;
    }

    return self;
}

- (void)drawRect:(CGRect)rect {

    [super drawRect:rect];

    /**
     * 其实高度
     */
    float top = self.m_model.m_img_top.m_height/2.;

    // 创建path
    UIBezierPath *path = [UIBezierPath bezierPath];

    [path setLineWidth:0.2];

    [path moveToPoint:CGPointMake(self.bounds.size.width, top + RECT_ROUND)];

    // 右侧竖线
    [path addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height-RECT_ROUND)];

    // 右下角圆弧
    [path addQuadCurveToPoint:CGPointMake(self.bounds.size.width-RECT_ROUND, self.bounds.size.height) controlPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height)];

    // 底部横线
    [path addLineToPoint:CGPointMake(RECT_ROUND, self.bounds.size.height)];

    // 左下角圆弧
    [path addQuadCurveToPoint:CGPointMake(0, self.bounds.size.height-RECT_ROUND) controlPoint:CGPointMake(0, self.bounds.size.height)];

    // 左侧竖线
    [path addLineToPoint:CGPointMake(0 , top + RECT_ROUND)];

    // 左上角圆弧
    [path addQuadCurveToPoint:CGPointMake(RECT_ROUND, top) controlPoint:CGPointMake(0, top)];

    // 将path绘制出来
    [path stroke];

    // 顶部航线比较粗，所以要人为变细
    [path setLineWidth:0.1];

    // 上部左侧横线
    [path addLineToPoint:CGPointMake(self.bounds.size.width/2. - self.m_model.m_img_top.m_height/2., top)];

    // 画半圆
    [path addArcWithCenter:CGPointMake(self.bounds.size.width/2., top)
                    radius:self.m_model.m_img_top.m_height/2.
                startAngle:M_PI*1
                  endAngle:M_PI*2
                 clockwise:YES];
    // 上部右侧横线
    [path addLineToPoint:CGPointMake(self.bounds.size.width-RECT_ROUND, top)];

    // 右上角圆弧
    [path addQuadCurveToPoint:CGPointMake(self.bounds.size.width, top+RECT_ROUND) controlPoint:CGPointMake(self.bounds.size.width, top)];

    // 将path绘制出来
    [path stroke];

}


@end
