//
//  ViewController.swift
//  NewsApp
//
//  Created by Ahmed Kamel on 4/25/19.
//  Copyright © 2019 Ahmed Kamel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    
var viewModel = HNViewModel()
    
    @IBOutlet weak var HNewsTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.HNewsTable.dataSource = self
        self.HNewsTable.delegate = self
        
        HNewsTable.rowHeight = UITableViewAutomaticDimension
        HNewsTable.estimatedRowHeight = 50
        HNewsTable.frame = view.bounds
        view.addSubview(HNewsTable)
        
        
    }
    
    
    
    @IBAction func topNews_btn(_ sender: Any) {
        
        
        
        
        DispatchQueue.main.async {
            
            IndecatorView.show()
            
            self.viewModel.getTopStories(Controller: self){(success) in
                
                
                if success{
                    
                    self.HNewsTable.reloadData()
                    
                    IndecatorView.dismiss()
                    
                }else{
                    
                    IndecatorView.dismiss()
                    
                }
            }
            
        }
        
        
    }
    
    
    
    
    @IBAction func lastNews_btn(_ sender: Any) {
        
        
        
        
        DispatchQueue.main.async {
            
            IndecatorView.show()
            
            self.viewModel.getNewStories(Controller: self){(success) in
              
                
                
                if success{
                    
                    self.HNewsTable.reloadData()
                    
                    IndecatorView.dismiss()
                    
                }else{
                    
                    IndecatorView.dismiss()
                    
                }
            }
            
        }
        
        
    }
    
    
    
    @IBAction func showNews_ntn(_ sender: Any) {
        
        
        
        DispatchQueue.main.async {
            
            IndecatorView.show()
            
            self.viewModel.getRecentStories(Controller: self){(success) in
                
                
                if success{
                    
                    self.HNewsTable.reloadData()
                    
                    IndecatorView.dismiss()
                    
                }else{
                    
                    IndecatorView.dismiss()
                    
                }
            }
            
        }
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        
        DispatchQueue.main.async {
            
             IndecatorView.show()
            
            self.viewModel.getTopStories(Controller: self){(success) in
                
                
                if success{
                
            self.HNewsTable.reloadData()
                    
             IndecatorView.dismiss()
                    
                }else{
                    
                    IndecatorView.dismiss()
                    
                }
            }
            
        }
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsService.SharedInstance.arrayOfList.count  }
    
    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.HNewsTable.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HNTableViewCell
        
                       
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "Cell") as! HNTableViewCell
        }
        
        
        
        
        cell.TitleLabelText?.text = newsService.SharedInstance.arrayOfList[indexPath.row].title
        
        cell.DetailsLabelText?.text =  "By: " + newsService.SharedInstance.arrayOfList[indexPath.row].by + " Score: " + "\(newsService.SharedInstance.arrayOfList[indexPath.row].score)"
        
        
        return cell
        
    }
    
    
    


}






