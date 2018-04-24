//
//  main.swift
//  iOSCertificateTool
//
//  Created by 高昕源 on 2018/4/24.
//  Copyright © 2018年 高昕源. All rights reserved.
//

import Foundation

import XYMobileprovisionReader
import XYP12Reader

let argsCount = CommandLine.arguments.count

if argsCount > 3 || argsCount < 2 {
    print("Wrong arguments count: \(argsCount)")
    exit(1)
}

let filePath = CommandLine.arguments[1]
var password : String

if argsCount == 3 {
    password = CommandLine.arguments[2]
}


let extentsion = NSString(string: filePath).pathExtension

if extentsion == "p12" {
    
} else if extentsion == "mobileprovision" {
    let mobileprovisionReader = MobileprovisionReader(path:filePath)
    let mobileprovisionInfo = mobileprovisionReader.getInfo()
    mobileprovisionInfo!.description()
} else {
    print("Wrong File Type")
    exit(1)
}





