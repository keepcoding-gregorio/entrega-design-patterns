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
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        formatCell()
        formatImage()
    }

    override func prepareForReuse() {
        homeCellName.text = nil
        homeCellImage.image = nil
    }
    
    func updateViews(data: DetailCharacterModel?) {
        update(name: data?.name)
        update(image: data?.image)
    }
    
    private func update(name: String?) {
        homeCellName.text = name ?? ""
    }
    
    private func update(image: String?) {
        homeCellImage.image = UIImage(named: image ?? "")
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
