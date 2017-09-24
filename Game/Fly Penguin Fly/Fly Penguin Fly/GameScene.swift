import SpriteKit
import GameplayKit

class GameScene: SKScene {
    //let world = SKNode() // create the world as a generic node
    let world = SKNode()
    let bee = SKSpriteNode(imageNamed: "bee.png")
    
    func addTheFlyingBee() {
        self.bee.position = CGPoint(x: 250, y: 250)
        world.addChild(bee)
        
        let beeAtlas = SKTextureAtlas(named: "beeAtlas")
        let beeFrames: [SKTexture] = [beeAtlas.textureNamed("bee.png"), beeAtlas.textureNamed("beeFly.png")]
        let beeFlyAction = SKAction.animate(with: beeFrames, timePerFrame: 0.14)
        let beeRepeatFlyAction = SKAction.repeatForever(beeFlyAction)
        
        self.bee.run(beeRepeatFlyAction)
        
        let flyRightAction = SKAction.moveBy(x: 200, y: 20, duration: 2)
        let flyLeftAction = SKAction.moveBy(x: -200, y: -20, duration: 2)
        
        // Flip the texture back and forth
        let flipBeeNegative = SKAction.scaleX(to: -1, duration: 0)
        let flipBeePositive = SKAction.scaleX(to: 1, duration: 0)
        
        let flightOfTheBee = SKAction.sequence([flyLeftAction, flipBeeNegative, flyRightAction, flipBeePositive])
        let neverEndingFlight = SKAction.repeatForever(flightOfTheBee)
        
        self.bee.run(neverEndingFlight)
    }

    // This function fires every time the game switches to this scene
    override func didMove(to view: SKView) {
        // Set the scene background color to sky blue
        self.backgroundColor = UIColor(red: 0.4, green: 0.6, blue: 0.95, alpha: 1.0)
        
        // Add the world node as a child of the scene
        self.addChild(world)
        self.addTheFlyingBee()
    }
    
    // To simulate the effect of centering the camera on a sprite
    // Here, the sprite is actually moving as usual, but our world node is
    // continuously changing is x and y position to simulate the visual effect
    // that the sprite is centered always
    override func didSimulatePhysics() {
        // To center our bee
        // To find the correct position, subtract half of the scene size from the
        // bee's position, adjusted for any world scaling
        // Multiply by -1 and you have the adjustment to keep our sprite
        // centered
        
        let worldXPosition = -(bee.position.x * world.xScale - (self.size.width/2))
        let worldYPosition = -(bee.position.y * world.yScale - (self.size.height/2))
        
        //print(world.xScale, bee.position.x, self.size.width, self.size.width/2, worldXPosition)
        //print(world.yScale, bee.position.y, self.size.height, self.size.height/2, worldYPosition)
        
        world.position = CGPoint(x: worldXPosition, y: worldYPosition)
    }
}
