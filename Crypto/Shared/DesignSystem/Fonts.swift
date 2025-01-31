//
//  Fonts.swift
//  Crypto
//
//  Created by Suelio Sousa on 28/01/25.
//

import SwiftUI

enum AppFont {
    static func regular(size: CGFloat) -> Font {
        return Font.custom("SpaceGrotesk-Regular", size: size)
    }
    
    static func bold(size: CGFloat) -> Font {
        return Font.custom("SpaceGrotesk-Bold", size: size)
    }
    
    static func semiBold(size: CGFloat) -> Font {
        return Font.custom("SpaceGrotesk-SemiBold", size: size)
    }
    
    static func medium(size: CGFloat) -> Font {
        return Font.custom("SpaceGrotesk-Medium", size: size)
    }
    
    static func light(size: CGFloat) -> Font {
        return Font.custom("SpaceGrotesk-Light", size: size)
    }
}
