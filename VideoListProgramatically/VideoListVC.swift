//
//  VideoListVC.swift
//  VideoListProgramatically
//
//  Created by admin on 21/04/22.
//

import UIKit

class VideoListVC: UIViewController {
    var tableView = UITableView()
    var videos:[Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        title = "Rahul's Videos"
        configureTableView()
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        //set Row height
        tableView.rowHeight = 100
        //set Delegete
        setTableViewDelegate()
        //register cell
        tableView.register(VideoCell.self, forCellReuseIdentifier: "VideoCell")
        //set constraint
        tableView.pin(to: view)
        
    }
    func setTableViewDelegate(){
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func createArray() -> [Video] {
        var tempVideos: [Video] = []
        let vdo1 = Video(image: Images.img1!, title: "this is starting app ")
        let vdo2 = Video(image: Images.img2!, title: "this video contain setup")
        let vdo3 = Video(image: Images.img3!, title: "overview")
        let vdo4 = Video(image: Images.img4!, title: "delegate")
        let vdo5 = Video(image: Images.img5!, title: "ui picker view")
//        let vdo6 =
        tempVideos.append(vdo1)
        tempVideos.append(vdo2)
        tempVideos.append(vdo3)
        tempVideos.append(vdo4)
        tempVideos.append(vdo5)
//        tempVideos.append(vdo1)
    return tempVideos
    }

}
extension VideoListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        let video = videos[indexPath.row]
        cell.setVideo(video: video)
        return cell
    }
    
    
}
