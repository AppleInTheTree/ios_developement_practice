import UIKit

//ios delvelopment에서는 camelCase을 1원칙으로 쓴다
class ViewController: UIViewController {
    
    //IBOultet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //WHO.WHAT = VALUE
        diceImageView1.image = (UIImage(imageLiteralResourceName: "DiceSix"))// imageliteral은 이미지를 선택할수 있도록 해준다.
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
    
        
    }
    //IBAction은 코드가 버튼 인터페이스와 상호작용할수 있도록
    //IBOutlet은 인터페이스를 코드와 (방향이 반대)
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped.")
        // 버튼을 누르면 그림이 바뀌도록
        //array를 통해 여러 이미지를 담을수도 있다 [][1] array안에서 1번째 반환
        
        // diceArray안의 내용을 한번도 바꾸지 않고 있기 때문에 var이 아니라 var로 바꾼다. let은 바꿀수 없다
        let diceArray = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        diceImageView1.image = (UIImage(imageLiteralResourceName: ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"][Int.random(in: 0...5)])) // Int.random(in: 1...10) 1에서 10까지 랜덤 넘버 인출
        diceImageView2.image = (UIImage(imageLiteralResourceName: diceArray[Int.random(in: 0...5)])) //이런식으로 array를 가져와서 할 수도 있다

        
       
    }
}

