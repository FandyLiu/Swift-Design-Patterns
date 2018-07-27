//
//  AttackStrategy.swift
//  Swift-Design-Patterns
//
//  Created by 刘欢 on 2018/7/24.
//  Copyright © 2018年 刘欢. All rights reserved.
//

import UIKit

protocol IAttackStrategy {
    func execute()
}

class MagicAttackStrategy: IAttackStrategy {
    func execute() {
        print("你向敌人发起[魔法]攻击")
    }
}
class PhysicalAttackStrategy: IAttackStrategy {
    func execute() {
        print("你向敌人发起[物理]攻击")
    }
}
class VerbalAttackStrategy: IAttackStrategy {
    func execute() {
        print("你向敌人发起[言语]攻击")
    }
}

class Attackter {
    private var attackStrategy: IAttackStrategy
    
    init(attackStrategy: IAttackStrategy) {
        self.attackStrategy = attackStrategy
    }
    
    func changeStrategy(attackStrategy: IAttackStrategy) {
        self.attackStrategy = attackStrategy
    }
    
    func attack() {
        self.attackStrategy.execute()
    }
}





































