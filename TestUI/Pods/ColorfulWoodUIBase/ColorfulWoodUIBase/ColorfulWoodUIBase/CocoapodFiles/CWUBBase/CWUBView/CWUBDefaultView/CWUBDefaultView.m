//
//  FSLDefaulView.m
//  FangShiLiu
//
//  Created by 大新 on 2018/12/8.
//  Copyright © 2018年 MAC. All rights reserved.
//

#import "CWUBDefaultView.h"
#import <Masonry/Masonry.h>
#import "CWUBDefine.h"

@interface CWUBDefaultView()

@property(nonatomic, strong)NSString * m_image;
@property(nonatomic, strong)NSString * m_title;
@property(nonatomic, strong)NSString * m_buttonTitle;

@property(nonatomic, strong)UIImageView * m_imgView;
@property(nonatomic, strong)UILabel * m_lblTitle;


/**
 * 一个假按钮，实际上就是提醒点击刷新，但是点击别的地方，也让它能刷新
 */
@property(nonatomic, strong)UILabel * m_lblBtn;

@end

@implementation CWUBDefaultView

- (instancetype)init{

    if (self = [super init]) {

        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.m_imgView];
        [self addSubview:self.m_lblTitle];
        [self addSubview:self.m_lblBtn];

        [self func_updateConsrtains];

        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(event_btn)];
        [self addGestureRecognizer:tap];
    }

    return self;
}

- (instancetype)initWithFrame:(CGRect)frame img:(NSString*)img title:(NSString*)title{

    if (self = [super initWithFrame:frame]) {
        self.m_image = img;
        self.m_title = title;
 
        [self addSubview:self.m_imgView];
        [self addSubview:self.m_lblTitle];
        [self addSubview:self.m_lblBtn];

        self.m_lblTitle.text = title;
        [self.m_imgView setImage:[UIImage imageNamed:img]];

        [self func_updateConsrtains];



        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(event_btn)];
        [self addGestureRecognizer:tap];

        self.backgroundColor = [UIColor whiteColor];

    }

    return self;
}

/**
 * 更新界面显示的图片和文字
 * 有可能从无网络状态变成无数据状态
 */
- (void)interface_updateImg:(NSString *)img title:(NSString*)title{

    self.m_lblTitle.text = title;
    [self.m_imgView setImage:[UIImage imageNamed:img]];

    [self func_updateConsrtains];
}

/**
 * 设置为无网络页面
 */
- (void)interface_setNoNet{

    self.m_lblTitle.text = @"当前网络异常！";
    [self.m_imgView setImage:[UIImage imageNamed:@"通用_无网络"]];
    self.hidden = NO;
    self.m_lblBtn.hidden = YES;
    [self func_updateConsrtains];
}

/**
 * 设置为无内容页面
 */
- (void)interface_setNoContent{

    self.m_lblTitle.text = @"当前暂无内容！";
    [self.m_imgView setImage:[UIImage imageNamed:@"通用_无内容"]];
    self.m_lblBtn.hidden = YES;
    self.hidden = NO;
    [self func_updateConsrtains];

}


/**
 * 无网络 有按钮 无详情
 */
- (void)interface_setNoNet_withBtn{
    self.m_lblTitle.text = @"当前网络异常！";
    [self.m_imgView setImage:[UIImage imageNamed:@"通用_无网络"]];
    self.hidden = NO;
    self.m_lblBtn.hidden = NO;
    [self func_updateConsrtains];
}

/**
 * 无内容 有按钮 无详情
 */
- (void)interface_setNoContent_withBtn{
    self.m_lblTitle.text = @"当前暂无内容！";
    [self.m_imgView setImage:[UIImage imageNamed:@"通用_无内容"]];
    self.hidden = NO;
    self.m_lblBtn.hidden = NO;
    [self func_updateConsrtains];
}

#pragma mark - 布局
- (void)func_updateConsrtains{

    [_m_imgView mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerX.equalTo(self);
        make.top.equalTo(self).offset(CWUBDefineDeviceHeight/4);
        make.height.equalTo(@(153));
        make.width.equalTo(@(236));
    }];

    [_m_lblTitle mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self).offset(50);
        make.right.equalTo(self).offset(-50);

        make.top.equalTo(self.m_imgView.mas_bottom).offset(50);
    }];

    [_m_lblBtn mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerX.equalTo(self);
        make.top.equalTo(self.m_lblTitle.mas_bottom).offset(15);
        make.width.mas_equalTo(CWUBDefine_Width(173));
        make.height.mas_equalTo(CWUBDefine_Width(44));
    }];
}

#pragma mark - 属性

- (UIImageView*) m_imgView {

    if (!_m_imgView) {

        _m_imgView = [UIImageView new];
        _m_imgView.contentMode =  UIViewContentModeScaleAspectFit;
        _m_imgView.layer.masksToBounds = YES;
//        _m_imgView.backgroundColor = kColorRGB(250., 250., 250.);
//        _m_imgView.layer.borderColor = CWUBDefineCreate_Color(228., 228., 228., 1).CGColor;
//        _m_imgView.layer.borderWidth = 1.;
//        _m_imgView.layer.cornerRadius = 3.;
    }

    return _m_imgView;
}

- (UILabel*)m_lblTitle{

    if (!_m_lblTitle) {

        _m_lblTitle = [UILabel new];
        _m_lblTitle.textColor = CWUBDefineCreate_ColorRGB(0X444444);
        _m_lblTitle.lineBreakMode = NSLineBreakByWordWrapping;
        _m_lblTitle.numberOfLines = 0.;
        _m_lblTitle.font = [UIFont systemFontOfSize:16.];
        _m_lblTitle.textAlignment = NSTextAlignmentCenter;
    }

    return _m_lblTitle;
}

- (UILabel*) m_lblBtn {

    if (!_m_lblBtn) {

        _m_lblBtn = [UILabel new];
        _m_lblBtn.layer.cornerRadius = CWUBDefine_Width(35./2.);
        _m_lblBtn.layer.borderWidth = 1.;
        _m_lblBtn.layer.borderColor = CWUBDefineCreate_ColorRGB(0xFF6634).CGColor;
        _m_lblBtn.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        _m_lblBtn.textColor = CWUBDefineCreate_ColorRGB(0xFF6634);
        _m_lblBtn.text = @"点击重试";
        _m_lblBtn.textAlignment = NSTextAlignmentCenter;
        _m_lblBtn.hidden = YES;
    }

    return _m_lblBtn;
}

- (void)setM_image:(NSString *)m_image{

    _m_image = m_image;

    if (!_m_image) {
        _m_image = @"";
    }

}

-(void)setM_title:(NSString *)m_title{

    _m_title = m_title;

    if (!_m_title) {
        _m_title = @"";
    }

}

#pragma mark - 事件
- (void)event_btn{

    self.delegate = (id<CWUBDefaultViewDelegate>)[self inner_findViewController];
    
    if ([self.delegate respondsToSelector:@selector(CWUBDefaultViewDelegate_click)]) {

        [self.delegate CWUBDefaultViewDelegate_click];
    }

    if (self.CWUBDefaultViewClickBlock) {
        self.CWUBDefaultViewClickBlock();
    }
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
@end
