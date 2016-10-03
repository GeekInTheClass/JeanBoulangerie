//
//  pain.swift
//  Jean
//
//  Created by ITCT09 on 2016. 9. 27..
//  Copyright © 2016년 ITCT09. All rights reserved.
//

import Foundation


class 제품 {
    var 이름: String
    var 종류: String
    var 가격: Int
    var 재료: [String]
    
    init(이름:String,종류:String,가격:Int) {
        self.이름=이름
        self.종류=종류
        self.가격=가격
        self.재료=[]
    }
}

enum 밀가루{
    case 박력
    case 중력
}

class 빵: 제품 {
    var 어떤빵: String?
}

class 케잌: 제품{
    var 어떤종류: String
    
    
    override init(이름:String,종류:String,가격:Int) {
        self.어떤종류=""
        super.init(이름: 이름,종류:종류,가격:가격)
    }
    
}

func createDummy() -> [제품]{
    
    var 제품들:[제품] = []
    
    let 단팥빵 = 빵(이름: "단팥빵",종류: "앙금빵",가격:1500)
    단팥빵.재료 += ["단팥"]
    제품들.append(단팥빵)
    
    let 크로와상 = 빵(이름: "크로와상",종류:"패스트리",가격:1500)
    크로와상.재료 += [""]
    제품들.append(단팥빵)
    
    let 티라미수 = 케잌(이름: "티라미수",종류:"케잌",가격:30000)
    티라미수.재료 += ["마스카포네치즈"]
    티라미수.재료 += ["커피액기스","아몬드분말"]
    제품들.append(티라미수)
    
    return 제품들
}