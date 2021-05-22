//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

struct PayStructure {
    let id: String
    let percentageOfProfit: Decimal
    let maxNumberOfPurchases: Int
    let maxNumberOfPurchasesPerUser: Int
    let getPaidEvenIfCouponIsApplied: Bool
    let referrerID: String
}


/*
 
 maxNumberOfPurchasesPerUser: {
     type: DataTypes.INTEGER,
     allowNull: false,
     defaultValue: 1
 },
 getPaidEvenIfCouponIsApplied: {
     type: DataTypes.BOOLEAN,
     allowNull: false,
     defaultValue: true
 
 */
