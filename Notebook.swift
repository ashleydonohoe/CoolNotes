//
//  Notebook.swift
//  Cool Notes
//
//  Created by Gabriele on 9/1/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import Foundation
import CoreData


class Notebook: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    convenience init(name: String = "New Notebook", context: NSManagedObjectContext) {
        if let ent = NSEntityDescription.entityForName("Notebook", inManagedObjectContext: context) {
            self.init(entity: ent, insertIntoManagedObjectContext: context)
            self.name = name
            self.creationDate = NSDate()
        } else {
            fatalError("Unable to find Entity name")
        }
    }
    
    var humanReadableAge: String {
        get {
            let fmt = NSDateFormatter()
            fmt.timeStyle = .NoStyle
            fmt.dateStyle = .ShortStyle
            fmt.doesRelativeDateFormatting = true
            fmt.locale = NSLocale.currentLocale()
            
            return fmt.stringFromDate(creationDate!)
        }
    }

}
