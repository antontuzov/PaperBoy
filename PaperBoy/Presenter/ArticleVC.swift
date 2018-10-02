//
//  ArticleVC.swift
//  PaperBoy
//
//  Created by Winston Maragh on 9/26/18.
//  Copyright © 2018 Winston Maragh. All rights reserved.
//

import UIKit


class ArticleVC: UIViewController {

    @IBOutlet var articleView: ArticleView!

    var article: Article!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setupPageFromArticle()
        articleView.delegate = self
//        preloadWebView()
    }
    
    private func preloadWebView(){
        let _webVC = WebVC()
        _webVC.view.setNeedsLayout()
        _webVC.view.layoutIfNeeded()
    }
    
    private func setupNavBar(){
        self.view.backgroundColor = .white
        navigationItem.title = "Article"
    }
    
    private func setupPageFromArticle(){
        articleView.configureView(article: article)
    }
    
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) {alert in }
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ArticleVCToWebVC" {
            guard let webVC = segue.destination as? WebVC else {return}
            webVC.article = article
        }
    }


}



extension ArticleVC: ArticleViewDelegate {
    func browserButtonPressed() {
        print("In VC, browser pressed ")
        performSegue(withIdentifier: "ArticleVCToWebVC", sender: self)
    }

}
