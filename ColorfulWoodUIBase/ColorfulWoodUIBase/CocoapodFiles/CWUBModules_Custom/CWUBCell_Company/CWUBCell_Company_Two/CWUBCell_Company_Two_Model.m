//
//  CWUBCell_Company_Two_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/5/13.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Company_Two_Model.h"

@implementation CWUBCell_Company_Two_Model
- (instancetype) init{

    if (self = [super init]) {
        self.m_typeName = @"CWUBCell_Company_Two";;
    }

    return self;
}

- (CWUBTextInfo*)m_title_one{

    if (!_m_title_one) {
        _m_title_one = [CWUBTextInfo new];
        _m_title_one.m_color_backGround = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_one;
}

- (CWUBTextInfo*)m_title_two{

    if (!_m_title_two) {
        _m_title_two = [CWUBTextInfo new];
        _m_title_two.m_color_backGround = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_two;
}

- (CWUBTextInfo*)m_title_three{

    if (!_m_title_three) {
        _m_title_three = [CWUBTextInfo new];
        _m_title_three.m_color_backGround = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_three;
}

- (CWUBTextInfo*)m_title_four{

    if (!_m_title_four) {
        _m_title_four = [CWUBTextInfo new];
        _m_title_four.m_color_backGround = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_four;
}



- (CWUBImageInfo*) m_img_one{

    if (!_m_img_one) {
        _m_img_one = [CWUBImageInfo new];
    }

    return _m_img_one;
}

- (CWUBImageInfo*) m_img_two{

    if (!_m_img_two) {
        _m_img_two = [CWUBImageInfo new];
    }

    return _m_img_two;
}


- (CWUBImageInfo*) m_img_three{

    if (!_m_img_three) {
        _m_img_three = [CWUBImageInfo new];
    }

    return _m_img_three;
}


- (CWUBImageInfo*) m_img_four{

    if (!_m_img_four) {
        _m_img_four = [CWUBImageInfo new];
    }

    return _m_img_four;
}


+ (CWUBCell_Company_Two_Model*)tester_data{

    CWUBCell_Company_Two_Model *model = [CWUBCell_Company_Two_Model new];
    model.m_bottomLineInfo.m_color = [UIColor blueColor];

    model.m_title_one  = [[CWUBTextInfo alloc] initWithText:@"商讯撰写" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model.m_title_two = [[CWUBTextInfo alloc] initWithText:@"杂志内刊封面展示" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model.m_title_three = [[CWUBAttributedTextInfo alloc] initWithText:@"￥400" font:[CWUBDefine fontOptButton] color:[UIColor blueColor]];
    model.m_img_one = [[CWUBImageInfo alloc] initWithName:@"left" width:50 height:50];

    return model;
}

+ (CWUBCell_Company_Two_Model*)tester_dataWithArray:(NSMutableArray*)array{

    float fVSpace = 5.;
    CWUBCell_Company_Two_Model *model = [CWUBCell_Company_Two_Model new];

    model.m_img_backGround = [CWUBImageInfo new];
    model.m_img_backGround.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:8 width:1 color:CWUBDefineCreate_Color(233, 233, 233, 1)];
    model.m_img_backGround.m_margin_left = 15;
    model.m_img_backGround.m_margin_right = 15;

    model.m_title_one  = [[CWUBTextInfo alloc] initWithText:@"商讯撰写" font:[UIFont fontWithName:@"PingFangSC-Regular" size:12] color:CWUBDefineCreate_ColorRGB(0x212121)];
    model.m_title_one.m_margin_top = 30.;

    model.m_title_two = [[CWUBTextInfo alloc] initWithText:@"王先生" font:[UIFont fontWithName:@"PingFangSC-Regular" size:8] color:CWUBDefineCreate_ColorRGB(0xAEAEAE)];
    model.m_title_two.m_margin_left = 5.;


    model.m_title_three = [[CWUBTextInfo alloc] initWithText:@"￥400.00" font:[UIFont fontWithName:@"PingFangSC-Regular" size:8] color:CWUBDefineCreate_ColorRGB(0xAEAEAE)];
    model.m_title_three.m_margin_left = 5.;
    model.m_title_four = [[CWUBTextInfo alloc] initWithText:@"线下服务" font:[UIFont fontWithName:@"PingFangSC-Regular" size:8] color:CWUBDefineCreate_ColorRGB(0xAEAEAE)];
    model.m_title_four.m_margin_left = 5.;

    float fImgWidthOne = 42;
    model.m_img_one = [[CWUBImageInfo alloc] initWithName:@"left" width:fImgWidthOne height:fImgWidthOne];
    model.m_img_one.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:fImgWidthOne/2. width:1 color:CWUBDefineCreate_Color(233, 233, 233, 1)];
    model.m_img_one.m_margin_left = 30.;

    float imgWidth = 8;
    model.m_img_two = [[CWUBImageInfo alloc] initWithName:@"left" width:imgWidth height:imgWidth];
    model.m_img_three = [[CWUBImageInfo alloc] initWithName:@"left" width:imgWidth height:imgWidth];
    model.m_img_four = [[CWUBImageInfo alloc] initWithName:@"left" width:imgWidth height:imgWidth];
    model.m_img_two.m_margin_top = fVSpace;
    model.m_img_four.m_margin_top = fVSpace;
    model.m_img_four.m_margin_bottom = 30;
    if (array) {
        [array addObject:model];
    }

    return model;
}
@end
