//
//  HomeViewController.swift
//  TinyConstraintsYouTubeUI
//
//  Created by Alex Nagy on 11/12/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import TinyConstraints

class HomeViewController: UIViewController {
    
    let headerImageViewHeight: CGFloat = 100
    let profileImageViewHeight: CGFloat = 80
    let cogButtonHeight: CGFloat = 28
    let featuredVideoProfileImageViewHeight: CGFloat = 60
    
    let headerImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "Rebeloper Code Better and Get More App Downloads")
        return iv
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 33/255, green: 33/255, blue: 33/255, alpha: 1.0)
        return view
    }()
    
    lazy var profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "ProfilePic")
        iv.layer.cornerRadius = profileImageViewHeight / 2
        iv.layer.masksToBounds = true
        return iv
    }()
    
    let cogButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Cog").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let channelTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Rebeloper - Rebel Developer"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    let channelSubscribersCountLabel: UILabel = {
        let label = UILabel()
        label.text = "2,149 subscribers"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let videosContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 40/255, green: 40/255, blue: 40/255, alpha: 1.0)
        return view
    }()
    
    let featuredVideoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "In app Purchases in Xcode 10 - Swift 4.2 - iOS 12 - Consumables, Non-consumables, Subscriptions Thumbnail")
        return iv
    }()
    
    let duratuionLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.7)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .center
        label.text = "13:17"
        label.textColor = .white
        return label
    }()
    
    lazy var featuredVideoProfileImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "ProfilePic")
        iv.layer.cornerRadius = featuredVideoProfileImageViewHeight
        iv.layer.masksToBounds = true
        return iv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
    }
    
    fileprivate func setupView() {
        view.addSubview(headerImageView)
        view.addSubview(containerView)
        containerView.addSubview(profileImageView)
        containerView.addSubview(cogButton)
        containerView.addSubview(channelTitleLabel)
        containerView.addSubview(channelSubscribersCountLabel)
        containerView.addSubview(videosContainerView)
        videosContainerView.addSubview(featuredVideoImageView)
        featuredVideoImageView.addSubview(duratuionLabel)
        videosContainerView.addSubview(featuredVideoProfileImageView)
        
        headerImageView.edgesToSuperview(excluding: .bottom, insets: .left(-130) + .right(-130), usingSafeArea: true)
        headerImageView.height(headerImageViewHeight)
        
        containerView.topToSuperview(offset: headerImageViewHeight, usingSafeArea: true)
        containerView.leftToSuperview()
        containerView.rightToSuperview()
        containerView.bottomToSuperview()
        
        profileImageView.top(to: containerView, offset: -profileImageViewHeight / 2)
        profileImageView.left(to: containerView, offset: 16)
        profileImageView.width(profileImageViewHeight)
        profileImageView.height(profileImageViewHeight)
        
        cogButton.top(to: containerView, offset: profileImageViewHeight / 2 + 16)
        cogButton.right(to: containerView, offset: -32)
        cogButton.width(cogButtonHeight)
        cogButton.height(cogButtonHeight)
        
        channelTitleLabel.top(to: containerView, offset: profileImageViewHeight / 2 + 8)
        channelTitleLabel.leftToRight(of: profileImageView, offset: -12)
        channelTitleLabel.rightToLeft(of: cogButton, offset: -8)
        
        channelSubscribersCountLabel.topToBottom(of: channelTitleLabel, offset: 3)
        channelSubscribersCountLabel.left(to: channelTitleLabel)
        channelSubscribersCountLabel.right(to: channelTitleLabel)
        
        videosContainerView.topToBottom(of: channelSubscribersCountLabel, offset: 24)
        videosContainerView.left(to: containerView)
        videosContainerView.right(to: containerView)
        videosContainerView.bottom(to: containerView)
        
        featuredVideoImageView.edges(to: videosContainerView, excluding: .bottom, insets: .top(16) + .left(16) + .right(-16))
        featuredVideoImageView.height(200)
        
        duratuionLabel.bottom(to: featuredVideoImageView, offset: -8)
        duratuionLabel.right(to: featuredVideoImageView, offset: -8)
        duratuionLabel.width(40)
        duratuionLabel.height(30)
        
    }

}

