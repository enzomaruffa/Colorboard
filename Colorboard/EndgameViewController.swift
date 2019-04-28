//
//  EndgameViewController.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 27/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

class EndgameViewController: UIViewController {

    @IBOutlet weak var resultTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let player = Player.getInstance()
        var distanceToColor = player.getCurrentColor().distanceToColor(player.goldColor) * 100
        let decimalValue = Double(100)
        
        distanceToColor = round(distanceToColor * decimalValue) / decimalValue
        
        var text = "sweet jesus i shall say not a single word. start over please."
        
        if distanceToColor <= 15 {
            text = "holy sweet sacred gods! you've made it! \n\n every king in the realm will now buy this 100% legit gold from us! \n\n see, using our dear Euclidean Distance formula - with some carefully placed wights - our precision is close to \(distanceToColor) \n\n every true gold in the world shall be ours... or should i say, mine? \n\n *your throat is instantly stabbed by an invisible force. your vision starts to get blurry. \nyeah, you're pretty much dead.*"
        } else if distanceToColor <= 30 {
            text = "wow! uau! it's indeed quite similar! i'm sure that at least a few foolish kings will believe us! \n\n see, using our dear Euclidean Distance formula - with some carefully placed wights - our precision is close to \(distanceToColor) \n\n as cool as it is, i'm not sure that you should be able to do it again... \n\n *your face starts melting. is he the arch-alchemist? is he some kind of god? you feel fire all around your body. it's so hot. if only you were Daenerys Targaryen, the unburnt. wait is that a flamethr...*"
        } else if distanceToColor <= 50 {
            text = "well. there was an attempt... trust me, i've seen worse! maybe if we get the king drunk before he sees this, it'll work! \n\n see, using our dear Euclidean Distance formula - with some carefully placed wights - our precision is close to \(distanceToColor) \n\n go on! i believe that you can do better :) \n\n *a few seconds after you turn your back to the arch-alchemist, you hear a loud thumb. he starts laughing... he has a crossbow... the floor is getting red. wait, is that your blood? wait what's that string sound aga...*"
        } else if distanceToColor <= 80 {
            text = "gosh! are you blind? let me teach you some maths: \n\n see, using our dear Euclidean Distance formula - with some carefully placed wights - our precision is close to \(distanceToColor) \n\n no one will buy this weird 100% fake gold from us. yeah, you shall have another chance... \n\n *the arch-alchemist throws your fake gold at you at unbelievable speeds. it pierces right through your heart. you feel whole - or should i say, a hole?...*"
        } else if distanceToColor <= 100 {
            text = "mamma mia is this some kind of joke? \n\n see, using our dear Euclidean Distance formula - with some carefully placed wights - our precision is close to \(distanceToColor) \n\n yeah no pretty words. die. \n\n *you feel numb. everything whitens. is this a wagon? what are those stormcloacks doing here? 'hey, you. finally awake...' is this skyrim? oof.*"
        }
        resultTextView.text = text
        
        player.endingGame = false

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
