//
//  VideoCell.swift
//  VideoListProgramatically
//
//  Created by admin on 21/04/22.
//

import UIKit

class VideoCell: UITableViewCell {
    var videoImgView = UIImageView()
    var videoTitle = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(videoTitle)
        addSubview(videoImgView)
        
        configureImageView()
        configureTitleLabel()
        setImageConstraint()
        setTitleConstraint()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setVideo(video: Video){
        videoImgView.image = video.image
        videoTitle.text = video.title
    }
    func configureImageView(){
        videoImgView.layer.cornerRadius  = 10
        videoImgView.clipsToBounds = true
    }
    
    func configureTitleLabel(){
        videoTitle.numberOfLines = 0
        videoTitle.adjustsFontSizeToFitWidth = true
    }
    func setImageConstraint(){
        videoImgView.translatesAutoresizingMaskIntoConstraints = false
        videoImgView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        videoImgView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        videoImgView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        videoImgView.widthAnchor.constraint(equalTo: videoImgView.heightAnchor,multiplier: 16/9).isActive = true
    }
    func setTitleConstraint(){
        videoTitle.translatesAutoresizingMaskIntoConstraints = false
        videoTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        videoTitle.leadingAnchor.constraint(equalTo:videoImgView.trailingAnchor, constant: 12).isActive = true
        videoTitle.heightAnchor.constraint(equalToConstant: 80).isActive = true
        videoTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
}
