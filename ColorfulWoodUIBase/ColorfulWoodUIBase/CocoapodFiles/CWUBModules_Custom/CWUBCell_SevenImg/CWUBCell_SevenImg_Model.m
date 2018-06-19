//
//  CWUBCell_SevenImg_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_SevenImg_Model.h"
#import <ColorfulWoodCategories/ColorfulWoodCategories.h>

@implementation CWUBCell_SevenImg_Model

- (CWUBTextInfo*)m_title_one{

    if (!_m_title_one) {
        _m_title_one = [CWUBTextInfo new];
        _m_title_one.m_color_backGroud = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_one;
}

- (CWUBTextInfo*)m_title_two{

    if (!_m_title_two) {
        _m_title_two = [CWUBTextInfo new];
        _m_title_two.m_color_backGroud = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_two;
}

- (CWUBTextInfo*)m_title_three{

    if (!_m_title_three) {
        _m_title_three = [CWUBTextInfo new];
        _m_title_three.m_color_backGroud = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_three;
}

- (CWUBTextInfo*)m_title_four{

    if (!_m_title_four) {
        _m_title_four = [CWUBTextInfo new];
        _m_title_four.m_color_backGroud = [UIColor colorWithHexString:@"#cccccc" alpha:1];
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

@end
