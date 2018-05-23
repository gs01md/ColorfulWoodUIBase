//
//  CWUBDefine.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBDefine.h"
#import <ColorfulWoodCategories/UIColor+Hex.h>

@implementation CWUBDefine


/**
 * 字体  PingFangSC-Semibold 14.
 */
+(UIFont*) fontDateTitle{

    return [UIFont fontWithName:@"PingFangSC-Semibold" size:14.];

}

/**
 * 字体  Helvetica 16.
 */
+(UIFont*) fontDate{

    return [UIFont fontWithName:@"Helvetica" size:16.];

}

/**
 * 操作按钮字体  大 PingFangSC-Semibold 14.2
 */
+(UIFont*) fontOptButton{

    return [UIFont fontWithName:@"PingFangSC-Semibold" size:14.2];

}

/**
 * 字体  大  PingFangSC-Medium 13.2
 */
+(UIFont*) fontBig{

    return [UIFont fontWithName:@"PingFangSC-Medium" size:13.2];

}

/**
 * 字体  大  PingFangSC-Regular 13.2
 */
+(UIFont*) fontBig_Regular{

    return [UIFont fontWithName:@"PingFangSC-Regular" size:13.2];

}


/**
 * 字体  中 PingFangSC-Semibold 12.1
 */
+(UIFont*) fontMid{

    return [UIFont fontWithName:@"PingFangSC-Semibold" size:12.1];

}

/**
 * 日期字体  中 PingFangSC-Regular 12.1
 */
+(UIFont*) fontDateMid{

    return [UIFont fontWithName:@"PingFangSC-Regular" size:12.1];

}

/**
 * 标题 PingFangSC-Light 13.1
 */
+(UIFont*) fontTitle{

    return [UIFont fontWithName:@"PingFangSC-Light" size:13.1];

}

/**
 * 导航栏标题  小 PingFangSC-Light 14.1
 */
+(UIFont*) fontNaviTitle{

    return [UIFont fontWithName:@"PingFangSC-Light" size:14.1];

}


/**
 * 字体  小 PingFangSC-Regular 9.7
 */
+(UIFont*) fontSmall{

    return [UIFont fontWithName:@"PingFangSC-Regular" size:9.7];

}

/**
 * 字体  小 PingFangSC-Regular 10.4
 */
+(UIFont*) fontDetailTime{

    return [UIFont fontWithName:@"PingFangSC-Regular" size:10.4];

}
#pragma mark - 颜色
/**
 * 颜色  244290
 */
+(UIColor*) colorMain{

    return [UIColor colorWithHexString:@"244290" alpha:1.];
}

/**
 * 颜色  898989
 */
+(UIColor*) colorSec{

    return [UIColor colorWithHexString:@"898989" alpha:1.];
}

/**
 * 颜色  ea5504
 */
+(UIColor*) colorOrange{

    return [UIColor colorWithHexString:@"ea5504" alpha:1.];
}

/**
 * 接近黑色 0e2242
 */
+(UIColor*) colorBlack{

    return [UIColor colorWithHexString:@"0e2242" alpha:1.];
}

/**
 * 联系人 ： 接近黑色 231815
 */
+(UIColor*) colorBlackPerson{

    return [UIColor colorWithHexString:@"231815" alpha:1.];
}

/**
 * 标题 ： 接近黑色
 */
+(UIColor*) colorBlackRefundTitle{

    return RGBCOLOR(96, 96, 96);
}


/**
 * 接近亮蓝色 00b1ed
 */
+(UIColor*) colorBlueLight{

    return [UIColor colorWithHexString:@"00b1ed" alpha:1.];
}

/**
 * 接近深蓝色 254391
 */
+(UIColor*) colorBlueDeep{

    return [UIColor colorWithHexString:@"254391" alpha:1.];
}

/**
 * 接近橘黄色 ea5504
 */
+(UIColor*) colorOrangeLight{

    return [CWUBDefine colorOrange];
}

/**
 * 接近深黄色 ce9855
 */
+(UIColor*) colorOrangeDeep{

    return [UIColor colorWithHexString:@"ce9855" alpha:1.];
}

/**
 * 接近灰色 727171
 */
+(UIColor*) colorGray{

    return [UIColor colorWithHexString:@"727171" alpha:1.];
}

/**
 * 操作按钮 ： 接近灰白色 EFEEEE
 */
+(UIColor*) colorOptButton{

    return [UIColor colorWithHexString:@"EFEEEE" alpha:1.];
}




/**
 * 颜色 ： 藏蓝 0a1232
 */
+(UIColor*) colorPurplishBlue{

    return [UIColor colorWithHexString:@"0a1232" alpha:1.];
}
#pragma mark - 分割线

+(UIImageView*) imgSep{

    UIImageView* img = [UIImageView new];
    [img setImage:[UIImage imageNamed:@"img_sep_xuxian"]];
    img.contentMode = UIViewContentModeScaleAspectFill;
    img.clipsToBounds = YES;

    return img;

}



/**
 * 获取父视图中指定类名的视图
 */
+ (UIView*)interface_superViewFor:(Class)cls view:(UIView*)view{
    UIView * viewFather = [view superview];
    int i = 0;
    while (![[viewFather class] isKindOfClass:cls] || i++<10) {
        viewFather = [viewFather superview];
    }

    return viewFather;
}
@end

