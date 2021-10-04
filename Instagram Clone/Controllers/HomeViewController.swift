//
//  HomeViewController.swift
//  Instagram Clone
//
//  Created by Anvarjon Khojimatov on 2021/09/28.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var items: Array<Post> = Array()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
    }


    //MARK: - Methods
    func initView() {
        tableView.dataSource = self
        tableView.delegate = self
        
        setNavigationBar()
        
        items.append(Post(fullName: "Tohir", userImage: "imageBoy", post_Image: "image1", post_Image2: "image2"))
        items.append(Post(fullName: "Zuhra", userImage: "imageGirl", post_Image: "image1", post_Image2: "image2"))
        items.append(Post(fullName: "Tohir", userImage: "imageBoy", post_Image: "image1", post_Image2: "image2"))
        items.append(Post(fullName: "Zuhra", userImage: "imageGirl", post_Image: "image1", post_Image2: "image2"))
        items.append(Post(fullName: "Tohir", userImage: "imageBoy", post_Image: "image1", post_Image2: "image2"))
        items.append(Post(fullName: "Zuhra", userImage: "imageGirl", post_Image: "image1", post_Image2: "image2"))
        
        
    }
    
    func setNavigationBar() {
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Instagram", style: .plain, target: self, action: #selector(instagramTapped))
        
        navigationItem.rightBarButtonItems = [ UIBarButtonItem(image: UIImage(named: "icon_send"), style:.plain, target: self, action: #selector(sendTapped)),
        
        UIBarButtonItem(image: UIImage(named: "icon_like"), style:.plain, target: self, action: #selector(likeTapped)),
        
        UIBarButtonItem(image: UIImage(named: "icon_plus"), style:.plain, target: self, action: #selector(plusTapped))
        ]
        
        
    }
    
    //MARK: - Actions
    
    @objc func instagramTapped() {
        
    }
    
    @objc func sendTapped() {
            
    }
    
    @objc func likeTapped() {
            
    }
    
    @objc func plusTapped() {
            
    }
    
    //MARK: - Table view
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.nameLabel.text = item.fullName
        cell.prifileImage.image = UIImage(named: item.userImage!)
        cell.postImage1.image = UIImage(named: item.post_Image!)
        cell.postImage2.image = UIImage(named: item.post_Image2!)
        
        
        return cell
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        500
    }

}
