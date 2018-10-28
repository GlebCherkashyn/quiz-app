//	
// Copyright © 2018 Essential Developer. All rights reserved.
//

import UIKit

protocol CellDataProtocol {
    
    // Some people prefer have different id value, for example: xib - SomeCell, id - SomeCellID
    
//    var id: String { get }
//    var xibName: String { get }
    
    // I like the way you did, when id == xibName, so...
    var cellID: String { get }
}

