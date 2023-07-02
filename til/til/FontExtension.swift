//
//  FontExtension.swift
//  til
//
//  Created by 조은비 on 2023/07/01.
//

import Foundation
import SwiftUI

extension Font {
    // 피그마에 사용된 폰트 보시고, 사용하시면 됩니다!
    // font(Font.customTitle()) 이런식으로 사용하시면 돼요!
    
    static func customTitle1() -> Font {
        return Font.custom("LINESeedSansKR-Bold", size: 28)
    }
    
    static func customeTitle2() -> Font {
        return Font.custom("LINESeedSansKR-Bold", size: 20)
    }
    
    static func dateFont() -> Font {
        return Font.custom("LINESeedSansKR-Bold", size: 36)
    }
    
    static func bodyFont() -> Font {
        return Font.custom("LINESeedSansKR-Regular", size: 16)
    }
    
    static func buttonFont() -> Font {
        return Font.custom("LINESeedSansKR-Bold", size: 12)
    }
    
    static func dayFont() -> Font {
        return Font.custom("LINESeedSansKR-Regular", size: 12)
    }

}
