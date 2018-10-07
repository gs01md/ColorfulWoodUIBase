//
//  CWUBCell_SevenImg_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_SevenImg_Model.h"

@implementation CWUBCell_SevenImg_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_SevenImg;
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

+ (CWUBCell_SevenImg_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_SevenImg_Model * model12 = [CWUBCell_SevenImg_Model new];
    model12.m_type = CWUBCellType_SevenImg;

    model12.m_img_one = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
    model12.m_img_two = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
    model12.m_img_three = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
    model12.m_img_three.m_margin_right = CWUBDefine_Width(53.);

    model12.m_img_one.m_margin_left = CWUBDefine_Width(53.);
    model12.m_title_one.m_height = 2.;
    model12.m_title_one.m_color_backGround = [UIColor blueColor];
    model12.m_title_one.m_margin_left = 0.01;
    model12.m_title_four.m_margin_right = 0.01;
    model12.m_title_four.m_margin_left = CWUBDefine_Width(5.);
    model12.m_title_one.m_margin_right = CWUBDefine_Width(5.);
    model12.m_title_two.m_margin_left = CWUBDefine_Width(5.);
    model12.m_title_two.m_margin_right = CWUBDefine_Width(5.);
    model12.m_title_three.m_margin_left = CWUBDefine_Width(5.);
    model12.m_title_three.m_margin_right = CWUBDefine_Width(5.);


    [data addObject:model12];

    return model12;
}
@end
