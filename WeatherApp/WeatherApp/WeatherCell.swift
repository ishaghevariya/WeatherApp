//
//  WeatherCell.swift
//  WeatherApp
//
//  Created by IshaGhevariya on 14/07/21.
//

import UIKit

class WeatherCell: UITableViewCell {

    
    
    private let myimageview:UIImageView = {
           let imgv = UIImageView()
           imgv.layer.cornerRadius = 40
           imgv.clipsToBounds = true
           return imgv
       }()
       
       private let mylabel:UILabel = {
           let lab = UILabel()
           lab.font = UIFont.boldSystemFont(ofSize: 22)
           return lab
       }()
       
       public let mybutton:UIButton = {
           let btn = UIButton()
           //btn.setImage(UIImage(named: ""), for: .normal)
           btn.setTitle("Click here", for: .normal)
           btn.tintColor = UIColor.black
           btn.layer.cornerRadius = 5
           return btn
       }()
       
       func setupcell(city name:CityDetail)
       {
          
           mylabel.text = name.location.name
          
           contentView.addSubview(mylabel)
           
           
           mylabel.frame = CGRect(x: myimageview.right + 20, y: 10, width: 140, height: 80)
       }
      
   /* override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }*/

}
