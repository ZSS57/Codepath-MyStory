//
//  ViewController.swift
//  MyStory
//
//  Created by zhaos on 2/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    //below add
    // Create individual Dinosaurs using Dinosaur model
    let name = MickeyMouse(name: "My name", image: UIImage(named: "name")!, des: "Mickey has different names around the world. For example, he is known as Musse Pigg in Sweden, Mi Lao Shu in China and Topolino in Italy.")
    let marriage = MickeyMouse(name: "Am I married?", image: UIImage(named: "marriage")!, des: "Yes, married. To Minnie Mouse. While there was never a wedding in any movie, Disney decided in the studio that the two mice were already happily hooked. As any couple would want, Mickey and Minnie shared their big-screen debut together in “Steamboat Willie” in 1928. Every year on November 18, they celebrate their birthdays together. How romantic is that?")
    let hotdog = MickeyMouse(name: "My first word", image: UIImage(named: "hotdog")!, des: "Mickey’s first words were: Hot dogs! Mickey Mouse is clearly a huge fan of hot dogs.")

    // Array for storing Dinosaurs
    var mickeymouse: [MickeyMouse] = []

    
    // above

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //below
        mickeymouse = [name, marriage,hotdog]
        print("Here are different facts")
        for mouse in mickeymouse {
            print(mouse)
        
        }
        //above
    }

    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.mouse = mickeymouse[0]
            } else if tappedView.tag == 1 {
                detailViewController.mouse = mickeymouse[1]
            } else if tappedView.tag == 2 {
                detailViewController.mouse = mickeymouse[2]
            } else {
                print("no mouse was tapped, please check your selection.")
            }
        }
    }
    
    
}

