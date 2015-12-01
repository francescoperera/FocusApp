//
//  MemoryTask.swift
//  Attention Deficit
//
//  Created by Francesco Perera on 11/26/15.
//  Copyright © 2015 Francesco Perera. All rights reserved.
//

import ResearchKit
import Foundation

public var MemoryTask: ORKOrderedTask{

    return ORKOrderedTask.spatialSpanMemoryTaskWithIdentifier("MemoryTask", intendedUseDescription: "this task will test your cognitive functioning", initialSpan: 3, minimumSpan: 3, maximumSpan: 5, playSpeed: 1, maxTests: 5, maxConsecutiveFailures: 3, customTargetImage: nil, customTargetPluralName: nil, requireReversal: false, options:ORKPredefinedTaskOption.None )


}
