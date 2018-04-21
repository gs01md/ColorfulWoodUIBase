//
//  CWUBCellType.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/7.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {

    CWUBCellType_Invalid = 0,
    /**
     * 居中，在背景上显示一段文字
     */
    CWUBCellType_TitleOnBackground,
    CWUBCellType_TitleLeft_InfoRight,
    CWUBCellType_TitleLeft_InfoLeft,
    CWUBCellType_TitleRight_ButtonRight,
    CWUBCellType_Trip,
    CWUBCellType_TitleLeft_InfoRight_ButtonRight,
    CWUBCellType_ButtonLeft_TitleLeft,
    CWUBCellType_Passenger,
    CWUBCellType_Passenger_Delete,
    CWUBCellType_Passenger_Opt,
    CWUBCellType_TitleLeft_InfoLeft_ButtonRight,
    CWUBCellType_Address,
    CWUBCellType_TitleLeft_InputLeft,
    CWUBCellType_ButtonRight_TitleRight_ButtonRight,
    CWUBCellType_ButtonRotate,
    CWUBCellType_Refund,
    CWUBCellType_ImgLeft_TitleLeft_InfoRight,
    CWUBCellType_ButtonRight_SpaceBottom,
    CWUBCellType_IconLeft_TitleLeft_TitleRight_IconRight,
    CWUBCellType_TitleLeft_SwithRight,
    CWUBCellType_Address_ArrowRight,
    CWUBCellType_CharterDetail_Opt,
    CWUBCellType_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight,
    CWUBCellType_IconTitleLeft_IconTitleRight,
    CWUBCellType_PassengerNum,
    CWUBCellType_TitleIconLeft_IconCenter_IconTitleRight,
    CWUBCellType_CharterHeader,
    CWUBCellType_CharterDiscount,
    CWUBCellType_RollingPics,


} CWUBCellType;




