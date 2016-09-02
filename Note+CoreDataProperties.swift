//
//  Note+CoreDataProperties.swift
//  Cool Notes
//
//  Created by Gabriele on 9/1/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Note {

    @NSManaged var text: String?
    @NSManaged var creationDate: NSDate?
    @NSManaged var notebook: NSManagedObject?

}
