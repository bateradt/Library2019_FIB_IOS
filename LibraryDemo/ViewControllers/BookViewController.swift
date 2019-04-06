//
//  BookViewController.swift
//  LibraryDemo
//
//  Created by fibbauru-14 on 06/04/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import UIKit
import SDWebImage

class BookViewController: UIViewController {

    @IBOutlet weak var overImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabe: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    
    let book: Book
    
    init(book : Book) {
        self.book = book
        super.init(nibName: nil, bundle : nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("deu merda, não usar!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = book.title
        overImageView.sd_setImage(with: book.coverURL,
                                   placeholderImage: UIImage(named: "placeholderBook"),
                                   options: .allowInvalidSSLCertificates,
                                   completed: nil)
      titleLabel.text = book.title
      authorLabe.text = NSLocalizedString("Author:", comment: "") +
        (book.author?.name ?? "")
        quantityLabel.text = NSLocalizedString("Quantidade: ", comment: "") +
        (book.quantity?.description ?? "0")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
