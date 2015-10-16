//
//  BookTableModel.swift
//  ScanBook
//
//  Created by Venkatesh Muthukrishnan on 10/16/15.
//  Copyright © 2015 Srinivasan Sundaramoorthy. All rights reserved.
//

import Foundation
import CoreData

class BookTableModel {
    var books = [NSManagedObject]()
    
    func getBooksCount()->Int{
        return books.count
    }
    func getBookTitle(index: Int)->String{
        let book = books[index]
        return (book.valueForKey("bookTitle") as? String)!

    }
    func getBookAuthor(index: Int)->String{
        let book = books[index]
        return (book.valueForKey("author") as? String)!
    }
    func getBookPages(index: Int)->Int{
        let book = books[index]
        return (book.valueForKey("noOfPages") as? Int)!
    }
    func getBarCode(index: Int)->String{
        let book = books[index]
        return (book.valueForKey("barCode") as? String)!
    }
    func getRead(index: Int)->Bool {
        let book = books[index]
        return (book.valueForKey("read") as? Bool)!
    }
}