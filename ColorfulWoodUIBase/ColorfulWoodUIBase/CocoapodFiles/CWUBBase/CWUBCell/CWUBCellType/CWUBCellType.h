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
    CWUBCellType_TitleLeft_ButtonRight,
    CWUBCellType_TitleCenter,
    CWUBCellType_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight,
    CWUBCellType_ImgCenter,
    CWUBCellType_ImgLeft_TitleRightThree,
    CWUBCellType_TitleLeft_TitleRight,
    CWUBCellType_TitleLeftTwo_ImgCenter_TitleRightTwo,
    CWUBCellType_WebImgStretch,
    CWUBCellType_ImgLeft_TitleRightTopTwo_TitleRightBottom,
    CWUBCellType_ImgTop_TitleCenter_TitleTitleImgBottom,
    CWUBCellType_Company_One,
    CWUBCellType_MyFollow_MyBusiness,
    CWUBCellType_ImgCenter_TitleCenter,
    CWUBCellType_TitleLeft_CollectionRight_ImgRight,
    CWUBCellType_SevenImg,
    CWUBCellType_TitleLeft_InputRight_TitleRightBottom,
    CWUBCellType_TitleLeft_InputRight_TitleRightBottom_ImgRight,
    CWUBCellType_TitleLeft_TextViewRight_TitleRightBottom,
    CWUBCellType_TitleTop_TitleBottom,
    CWUBCellType_ImgBack_TitleFront,
    CWUBCellType_SelectSex_Style1,
    CWUBCellType_CollectionTop_TitleBottom,
    CWUBCellType_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom,
    CWUBCellType_Carousel,
    CWUBCellType_Order_One,
    CWUBCellType_Server_One,

} CWUBCellType;





