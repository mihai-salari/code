import SpriteKit
import GameplayKit

class GameScene: SKScene {

    // This function fires every time the game switches to this scene
//    override func didMove(to view: SKView) {
//        let mySprite = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 50, height: 50))
//        mySprite.position = CGPoint(x: 100, y: 100) // relative to its parent node -- the scene
//
//        // Add the sprite node into the node tree
//        self.addChild(mySprite)
//
//        // Create an action instance
//        let demoAction = SKAction.moveBy(x: 100, y: 100, duration: 5)
//        //mySprite.run(demoAction)
//
//        let scaleAction = SKAction.scale(to: 2, duration: 5)
//        let rotateAction = SKAction.rotate(byAngle: 5, duration: 5)
//        let srActionGroup = SKAction.group([scaleAction, rotateAction])
//        //mySprite.run(srActionGroup)
//
//        let colorAction = SKAction.colorize(with: UIColor.red, colorBlendFactor: 0.5, duration: 5)
//        //mySprite.run(colorAction)
//
//        let myActionSequence = SKAction.sequence([demoAction, srActionGroup, colorAction])
//        mySprite.run(myActionSequence)
//    }
    
    override func didMove(to view: SKView) {
        // Set the scene background color to sky blue
        self.backgroundColor = UIColor(red: 0.4, green: 0.6, blue: 0.95, alpha: 1.0)
        
        // Create our bee sprite node
        let bee = SKSpriteNode(imageNamed: "bee.png")
        //bee.size = CGSize(width: 56, height: 48)
        bee.position = CGPoint(x: 200, y: 200)
        self.addChild(bee)
    }
}
