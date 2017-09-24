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
        bee.position = CGPoint(x: 400, y: 200)
        self.addChild(bee)
        
        let beeAtlas = SKTextureAtlas(named: "beeAtlas")
        let beeFrames: [SKTexture] = [beeAtlas.textureNamed("bee.png"), beeAtlas.textureNamed("beeFly.png")]
        let beeFlyAction = SKAction.animate(with: beeFrames, timePerFrame: 0.14)
        let beeRepeatFlyAction = SKAction.repeatForever(beeFlyAction)
        
        bee.run(beeRepeatFlyAction)
        
        let flyRightAction = SKAction.moveBy(x: 200, y: 20, duration: 2)
        let flyLeftAction = SKAction.moveBy(x: -200, y: -20, duration: 2)
        
        // Flip the texture back and forth
        let flipBeeNegative = SKAction.scaleX(to: -1, duration: 0)
        let flipBeePositive = SKAction.scaleX(to: 1, duration: 0)
        
        let flightOfTheBee = SKAction.sequence([flyLeftAction, flipBeeNegative, flyRightAction, flipBeePositive])
        let neverEndingFlight = SKAction.repeatForever(flightOfTheBee)
        
        bee.run(neverEndingFlight)
    }
}
