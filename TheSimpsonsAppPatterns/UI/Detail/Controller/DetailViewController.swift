//
//  DetailViewController.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 08/10/2023.
//

import UIKit

class DetailViewController: UIViewController, DetailViewProtocol {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailName: UILabel!
    @IBOutlet weak var detailDescription: UITextView!
    
    var viewModel: DetailViewModelProtocol?
    
    // MARK: View Controller implementation
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewLoaded()
    }
    
    // MARK: Detail View protocol implementation
    func updateView(character: DetailCharacterModel?) {
        updateLabel(content: character?.name, label: detailName)
        updateText(content: character?.description, textView: detailDescription)
        updateImage(imageName: character?.image, imageView: detailImage)
    }
    
    // TODO: extract to utils
    private func updateLabel(content: String?, label: UILabel) {
        label.text = content ?? ""
    }
    
    private func updateText(content: String?, textView: UITextView) {
        textView.text = content ?? ""
    }
    
    private func updateImage(imageName: String?, imageView: UIImageView) {
        imageView.image = UIImage(named: imageName ?? "")
    }

}
