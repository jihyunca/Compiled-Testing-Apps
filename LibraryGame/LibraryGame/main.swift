//
//  main.swift
//  LibraryGame
//
//  Created by Lizzie Kim on 2017-07-29.
//  Copyright © 2017 Lizzie Kim. All rights reserved.
//

import Foundation

var book1 = Book()
book1.name = "Hamlet"
book1.genre = "Tragedy"
book1.author = "Shakespeare"

//book1.bookPrint()

var book2 = Book()
book2.name = "Othello"
book2.genre = "Tragedy"
book2.author = "Shakespeare"

var book3 = Book()
book3.name = "Midsummer Nights Dream"
book3.genre = "Comedy"
book3.author = "Shakespeare"

//book2.bookPrint()

//book3.bookPrint()


var myBook = BookManager()
myBook.addBook(book1)
myBook.addBook(book2)
myBook.addBook(book3)

//print(myBook.showallBook())
print(myBook.countBook())

var findResult = myBook.findBook("Hamlet")
if findResult != nil{
    print(findResult!) //exclamation used for unwrapping aka it prints out properly instead of printing out \n
}

myBook.removeBook("Othello")












