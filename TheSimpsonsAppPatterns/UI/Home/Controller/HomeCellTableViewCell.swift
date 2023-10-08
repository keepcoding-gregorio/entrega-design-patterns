//
//  HomeCellTableViewCell.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 08/10/2023.
//

import UIKit

class HomeCellTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var homeCellImage: UIImageView!
    @IBOutlet weak var homeCellName: UILabel!
    
    @IBOutlet weak var homeCellJob: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        formatCell()
        formatImage()
    }

    override func prepareForReuse() {
        homeCellName.text = nil
        homeCellImage.image = nil
    }
    
    func updateViews(character: DetailCharacterModel?) {
        updateLabel(content: character?.name, label: homeCellName)
        updateText(content: character?.job, textView: homeCellJob)
        updateImage(imageName: character?.image, imageView: homeCellImage)
    }
    
    private func updateLabel(content: String?, label: UILabel) {
        label.text = content ?? ""
    }
    
    private func updateText(content: String?, textView: UITextView) {
        textView.text = content ?? ""
    }
    
    private func updateImage(imageName: String?, imageView: UIImageView) {
        imageView.image = UIImage(named: imageName ?? "")
    }
    
    private func formatCell() {
        cellView.layer.cornerRadius = 5.0
        cellView.layer.shadowColor = UIColor.gray.cgColor
        cellView.layer.shadowOffset = .zero
        cellView.layer.shadowOpacity = 0.7
        cellView.layer.shadowRadius = 4.0
    }
    
    private func formatImage() {
        homeCellImage.layer.cornerRadius = 4.0
    }
    
}
