//
//  GlobalShortCut.swift
//  URLog
//
//  Created by 赤堀　貴一 on 2018/02/10.
//  Copyright © 2018年 Ryukyu. All rights reserved.
//

import Magnet

class GlobalShortCut: NSObject, NSApplicationDelegate{
    
    func example(){
        
        // ⌘ + Control + B
        guard let keyCombo = KeyCombo(keyCode: 11, carbonModifiers: 4352) else { return }
        let hotKey = HotKey(identifier: "CommandControlB",
                            keyCombo: keyCombo,
                            target: self,
                            action: #selector(GlobalShortCut.tappedHotKey))
        hotKey.register()
        
        // Shift + Control + A
        guard let keyCombo2 = KeyCombo(keyCode: 0, cocoaModifiers: [.shift, .control]) else { return }
        let hotKey2 = HotKey(identifier: "ShiftControlA",
                             keyCombo: keyCombo2,
                             target: self,
                             action: #selector(GlobalShortCut.tappedHotKey2))
        hotKey2.register()
        
        //　⌘　Double Tap
        guard let keyCombo3 = KeyCombo(doubledCocoaModifiers: .command) else { return }
        let hotKey3 = HotKey(identifier: "CommandDobuleTap",
                             keyCombo: keyCombo3,
                             target: self,
                             action: #selector(GlobalShortCut.tappedDoubleCommandKey))
        hotKey3.register()
 
        //　Shift　Double Tap
        guard let keyCombo4 = KeyCombo(doubledCocoaModifiers: .shift) else { return }
        let hotKey4 = HotKey(identifier: "ShiftDobuleTap",
                             keyCombo: keyCombo4,
                             target: self,
                             action: #selector(GlobalShortCut.tappedDoubleShiftKey))
        hotKey4.register()
 
        
        //　Control　Double Tap
        guard let keyCombo5 = KeyCombo(doubledCocoaModifiers: .control) else { return }
        let hotKey5 = HotKey(identifier: "ControlDobuleTap",
                             keyCombo: keyCombo5,
                             target: self,
                             action: #selector(GlobalShortCut.tappedDoubleControlKey))
        hotKey5.register()
        
        //　Option　Double Tap
        guard let keyCombo6 = KeyCombo(doubledCocoaModifiers: .option) else { return }
        let hotKey6 = HotKey(identifier: "OptionDobuleTap",
                             keyCombo: keyCombo6,
                             target: self,
                             action: #selector(GlobalShortCut.tappedDoubleOptionKey))
        hotKey6.register()
 
        
    }
    
    @objc func tappedHotKey() {
        print("hotKey!!!!")
    }
    
    @objc func tappedHotKey2() {
        print("hotKey2!!!!")
    }
    
    @objc func tappedDoubleCommandKey() {
        print("command double tapped!!!")
    }
    
    @objc func tappedDoubleShiftKey() {
        print("shift double tapped!!!")
    }
    
    @objc func tappedDoubleControlKey() {
        print("control double tapped!!!")
    }
    
    @objc func tappedDoubleOptionKey() {
        print("option double tapped!!!")
    }

    
}
