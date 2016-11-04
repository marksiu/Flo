//
//  Layout.swift
//  HSBC_StockTrading_iOS
//
//  Created by Fafa Fung on 14/6/2016.
//  Copyright © 2016 Green Tomato Limited. All rights reserved.
//

import UIKit

private let _defaultLayout = DefaultLayout()

public func defaultLayout() -> Layout {
    return _defaultLayout
}

public protocol ColorIdentifierProtocol {
    func toColor() -> UIColor
}

public protocol FontIdentifierProtocol {
    func toFont() -> UIFont
}

extension UIColor: ColorIdentifierProtocol {
    public func toColor() -> UIColor {
        return self
    }
}

extension UIFont: FontIdentifierProtocol {
    public func toFont() -> UIFont {
        return self
    }
}

public enum ColorIdentifier
{
    case text
    case description
    case lightGrey
    case divider
//    case DarkBlue
//    case DarkBG
//    case LightBG
//    case LightBG2
//    case Primary
//    case Error
//    case White
//    case Black
//    case Locator
//    
//    case BlueFill
//    case RedFill
//    case BlueStroke
//    case RedStroke
//    
//    case BodyText
//    case Label
//    case Disabled
//    case Select
//    
//    case Increase
//    case Decrease
//    case IncreaseDark
//    case DecreaseDark
//    case NavigationBarBG
//    
//    case DarkSlate
//    case LightSlate
//    
//    case CardTitle
}

extension ColorIdentifier: ColorIdentifierProtocol
{
    public func toColor() -> UIColor
    {
        switch self {
        case .text:             return UIColor(UInt8ColorWithRed: 0x33, green: 0x33, blue: 0x33)
        case .description:      return UIColor(UInt8ColorWithRed: 0x7C, green: 0x7C, blue: 0x7C)
        case .lightGrey:        return UIColor(UInt8ColorWithRed: 0xA7, green: 0xA7, blue: 0xA7)
        case .divider:          return UIColor(UInt8ColorWithRed: 0xD7, green: 0xD8, blue: 0xD6)
//        case .DarkBlue:         return UIColor(UInt8ColorWithRed: 0x31, green: 0x40, blue: 0x4A)
//        case .DarkBG:           return UIColor(UInt8ColorWithRed: 0x1C, green: 0x1C, blue: 0x1C)
//        case .LightBG:          return UIColor(UInt8ColorWithRed: 0xED, green: 0xED, blue: 0xED)
//        case .LightBG2:         return UIColor(UInt8ColorWithRed: 0x5C, green: 0x5C, blue: 0x5C)
//        case .Primary:          return UIColor(UInt8ColorWithRed: 0xDB, green: 0x00, blue: 0x11)
//        case .Error:            return UIColor(UInt8ColorWithRed: 0x83, green: 0x00, blue: 0x0A)
//        case .White:            return UIColor(UInt8ColorWithRed: 0xFF, green: 0xFF, blue: 0xFF)
//        case .Black:            return UIColor(UInt8ColorWithRed: 0x00, green: 0x00, blue: 0x00)
//            
//        case .BlueFill:         return UIColor(UInt8ColorWithRed: 0x4D, green: 0x64, blue: 0x74)
//        case .RedFill:          return UIColor(UInt8ColorWithRed: 0xE5, green: 0x4D, blue: 0x58)
//        case .BlueStroke:       return UIColor(UInt8ColorWithRed: 0x41, green: 0x55, blue: 0x62)
//        case .RedStroke:        return UIColor(UInt8ColorWithRed: 0xAF, green: 0x00, blue: 0x0D)
//            
//        case .BodyText:         return UIColor(UInt8ColorWithRed: 0x33, green: 0x33, blue: 0x33)
//        case .Label:            return UIColor(UInt8ColorWithRed: 0x92, green: 0x92, blue: 0x92)
//        case .Disabled:         return UIColor(UInt8ColorWithRed: 0x6F, green: 0x00, blue: 0x08)
//        case .Select:           return UIColor(UInt8ColorWithRed: 0x00, green: 0x85, blue: 0x80)
//            
//        case .Increase:         return UIColor(UInt8ColorWithRed: 0x3B, green: 0x75, blue: 0x22)
//        case .Decrease:         return UIColor(UInt8ColorWithRed: 0xAF, green: 0x00, blue: 0x0D)
//        case .IncreaseDark:     return UIColor(UInt8ColorWithRed: 0x41, green: 0x96, blue: 0x5B)
//        case .DecreaseDark:     return UIColor(UInt8ColorWithRed: 0xFC, green: 0x35, blue: 0x45)
//        case .NavigationBarBG:  return UIColor(UInt8ColorWithRed: 0x00, green: 0x00, blue: 0x00)
//        case .Locator:          return UIColor(UInt8ColorWithRed: 0x4D, green: 0x64, blue: 0x74)
//            
//        case .DarkSlate:        return UIColor(UInt8ColorWithRed: 0x1D, green: 0x26, blue: 0x2C)
//        case .LightSlate:       return UIColor(UInt8ColorWithRed: 0x25, green: 0x30, blue: 0x38)
//            
//        case .CardTitle:        return UIColor(UInt8ColorWithRed: 0x41, green: 0x55, blue: 0x62)
        }
    }
}

public enum FontIdentifier
{
    case h1
    case h2
    case h3
    case header
    case subheader
    case body1
//    case Body2
//    case Body3
//    case Body4
//    case Body5
//    case Body6
//    case Error
//    case StardardButton
//    case Tabs
//    case InputPreset
//    case InputEntered
//    case TableContent
//    case HeaderAction
//    case Picker
//    
//    case MarketPrice
//    case Percentage
//    
//    case StockCode
//    case StockName
//    case StockPrice
//    case StockPrice2
//    case Header2
//    case AlertTextBold
//    case AlertTextRegular
//    case TableNumberBold
//    case TableLabel
//    case Remark
//    case Caption
//    case ChartColumn
}

extension FontIdentifier: FontIdentifierProtocol
{
    public func toFont() -> UIFont
    {
        switch self {
        case .h1:               return UIFont(weight: .Light, point: 30)
        case .h2:               return UIFont(weight: .Medium, point: 30)
        case .h3:               return UIFont(weight: .Light, point: 19)
        case .header:           return UIFont(weight: .Light, point: 23)
        case .subheader:        return UIFont(weight: .Light, point: 16)
        case .body1:            return UIFont(weight: .Regular, point: 13)
//        case .Body2:            return UIFont(weight: .Medium, point: 13)
//        case .Body3:            return UIFont(weight: .Regular, point: 11)
//        case .Body4:            return UIFont(weight: .Regular, point: 9)
//        case .Body5:            return UIFont(weight: .Medium, point: 9)
//        case .Body6:            return UIFont(weight: .Medium, point: 11)
//        case .Error:            return UIFont(weight: .Light, point: 13)
//        case .StardardButton:   return UIFont(weight: .Regular, point: 16)
//        case .Tabs:             return UIFont(weight: .Regular, point: 13)
//        case .InputPreset:      return UIFont(weight: .Regular, point: 30)
//        case .InputEntered:     return UIFont(weight: .Regular, point: 30)
//        case .TableContent:     return UIFont(weight: .Regular, point: 16)
//        case .HeaderAction:     return UIFont(weight: .Regular, point: 16)
//        case .Picker:           return UIFont(weight: .Regular, point: 23)
//            
//        case .MarketPrice:      return UIFont(weight: .Medium, point: 16)
//        case .Percentage:       return UIFont(weight: .Medium, point: 23)
//            
//        case .StockCode:        return UIFont(weight: .Regular, point: 30)
//        case .StockName:        return UIFont(weight: .Regular, point: 16)
//        case .StockPrice:       return UIFont(weight: .Regular, point: 35)
//        case .StockPrice2:      return UIFont(weight: .Regular, point: 19)
//        case .Header2:          return UIFont(weight: .Bold, point: 16)
//        case .AlertTextBold:    return UIFont(weight: .Bold, point: 16)
//        case .AlertTextRegular: return UIFont(weight: .Regular, point: 16)
//        case .TableNumberBold:  return UIFont(weight: .Bold, point: 16)
//        case .TableLabel:       return UIFont(weight: .Regular, point: 13)
//        case .Remark:           return UIFont(weight: .Regular, point: 12)
//        case .Caption:          return UIFont(weight: .Medium, point: 11)
//        case .ChartColumn:      return UIFont(weight: .Light, point: 11)
        }
    }
}

private let normalizedColor = { (value: UInt8) -> CGFloat in
    return CGFloat(value) / 255.0
}

extension UIColor
{
    public convenience init(UInt8ColorWithRed red: UInt8, green: UInt8, blue: UInt8, alpha: CGFloat = 1) {
        self.init(red: normalizedColor(red), green: normalizedColor(green), blue: normalizedColor(blue), alpha: alpha)
    }
}

private extension UIFont
{
    enum Weight: String {
        case Thin = "UniversNextforHSBC-Thin"
        case Regular = "UniversNextforHSBC-Regular"
        case Medium = "UniversNextforHSBC-Medium"
        case Bold = "UniversNextforHSBC-Bold"
        case Light = "UniversNextforHSBC-Light"
    }
    
    convenience init!(weight: UIFont.Weight, point: CGFloat) {
        self.init(name: weight.rawValue, size: point)
    }
}

public protocol Layout
{
    func colorWithColorIdentifier(colorIdentifier: ColorIdentifierProtocol) -> UIColor
    func fontWithFontIdentifier(fontIdentifier: FontIdentifierProtocol) -> UIFont
}

extension Layout
{
    public func colorWithColorIdentifier(colorIdentifier: ColorIdentifierProtocol) -> UIColor {
        return colorIdentifier.toColor()
    }
    
    public func fontWithFontIdentifier(fontIdentifier: FontIdentifierProtocol) -> UIFont {
        return fontIdentifier.toFont()
    }
    
    public func colorWithColorIdentifier(colorIdentifier: ColorIdentifierProtocol, alpha: CGFloat) -> UIColor {
        return self.colorWithColorIdentifier(colorIdentifier: colorIdentifier).withAlphaComponent(alpha)
    }
}

private final class DefaultLayout: Layout {}
