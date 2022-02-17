//
//  ViewController.swift
//  App
//
//  Created by Aleksandr on 17.02.22.
//

import UIKit

class ViewController: UIViewController {

    private let textView: UIImageView = {
        let textView = UIImageView()
        textView.contentMode = .scaleAspectFill
        textView.backgroundColor = .white
        return textView
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .magenta
        button.setTitle("Random photo", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()

    let colors: [UIColor] = [
        .magenta,
        .systemBlue,
        .white,
        .brown,
        .darkGray,
        .lightGray
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(textView)
        textView.frame = CGRect(x:0,y:0,width:300,height:300)
        textView.center = view.center
        
        view.addSubview(button)
       
        getRandomWord()
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton(){
        getRandomWord()
        view.backgroundColor = colors.randomElement()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.frame = CGRect(x: 30, y: view.frame.size.height-150-view.safeAreaInsets.bottom, width: view.frame.size.width-60, height: 50)
    }
    
    func getRandomWord(){
        let urlString = "https://source.unsplash.com/random/600x600"
        let url = URL(string: urlString)!
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        textView.image = UIImage(data: data)
    }

}

