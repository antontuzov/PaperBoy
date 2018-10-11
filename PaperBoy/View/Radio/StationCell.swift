//
//  StationTableViewCell.swift
//  PaperBoy
//
//  Created by Winston Maragh on 10/6/18.
//  Copyright © 2018 Winston Maragh. All rights reserved.
//

import UIKit

class StationCell: UITableViewCell {

    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationDescLabel: UILabel!
    @IBOutlet weak var stationImageView: UIImageView!
    
    static let id = "StationCell"
    
    override func awakeFromNib(){
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        stationNameLabel.text  = nil
        stationDescLabel.text  = nil
        stationImageView.image = nil
    }
    
    @objc func configureStationCell(_ station: RadioStation) {
        stationNameLabel.text = station.stationName
        stationDescLabel.text = station.stationDesc
        stationImageView.loadImage(imageURLString: station.stationImageString)
    }

}

