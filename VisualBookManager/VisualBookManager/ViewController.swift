//
//  ViewController.swift
//  VisualBookManager
//
//  Created by Lizzie Kim on 2017-07-29.
//  Copyright © 2017 Lizzie Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myBook = BookManager()
    @IBOutlet var outputTextView:UITextView!
    
    @IBOutlet var nameTextField:UITextField!
    @IBOutlet var genreTextField:UITextField!
    @IBOutlet var authorTextField:UITextField!
    @IBOutlet var countTextField:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let book1 = Book()
        book1.name = "Hamlet"
        book1.genre = "Tragedy"
        book1.author = "Shakespeare"
        
        //book1.bookPrint()
        
        let book2 = Book()
        book2.name = "Othello"
        book2.genre = "Tragedy"
        book2.author = "Shakespeare"
        
        let book3 = Book()
        book3.name = "Midsummer Nights Dream"
        book3.genre = "Comedy"
        book3.author = "Shakespeare"
        
        
        myBook.addBook(book1)
        myBook.addBook(book2)
        myBook.addBook(book3)
        
        countTextField.text = "\(myBook.countBook())"
        

    }
    
    @IBAction func showAllBookAction (_ sender: AnyObject){
    
        //print(myBook.showallBook())
        outputTextView.text = myBook.showallBook()
    
    }
    
    @IBAction func addBookAction (_ senter: AnyObject){
    
        let bookTemp = Book()
        
        bookTemp.name = nameTextField.text!
        bookTemp.genre = genreTextField.text!
        bookTemp.author = authorTextField.text!
        
        myBook.addBook(bookTemp)
        outputTextView.text = "\(nameTextField.text!) has been inserted"
    
    }
    
    @IBAction func searchBookAction (_ sender: AnyObject)
    {
    
        let resultBook = myBook.findBook(nameTextField.text!)
        
        if resultBook != nil
        {
            outputTextView.text = resultBook
        
        }
        else
        {
            outputTextView.text = "Nothing has been found."
        }
    
    }
    
    @IBAction func deleteBookAction (_ sender: AnyObject)
    {
        let deleteBook = myBook.removeBook(nameTextField.text!)
        
        if deleteBook == true{
        
            outputTextView.text = "\(nameTextField.text) has been deleted"
        }
        else
        {
            outputTextView.text = "There is no existing book that you are trying to delete."
        }
    
    
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}












