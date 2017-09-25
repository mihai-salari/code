import SpriteKit

class Bee: SKSpriteNode, GameSprite {
    var textureAtlas: SKTextureAtlas = SKTextureAtlas(named: "bee.atlas")
    var flyAnimation = SKAction()
    
    // The spawn function will be used to place the bee into the world.
    func spawn(parentNode: SKNode, position: CGPoint, size: CGSize = CGSize(width: 28, height: 24)) {
        parentNode.addChild(self)
        createAnimations()
        self.size = size
        self.position = position
        self.run(flyAnimation)
        
        // Attach a physics body, shaped like a circle and sized roughly
        // to our bee
        self.physicsBody = SKPhysicsBody(circleOfRadius: size.width/2)
        self.physicsBody?.affectedByGravity = false
    }
    
    func createAnimations() {
        let flyFrames: [SKTexture] = [textureAtlas.textureNamed("bee.png"), textureAtlas.textureNamed("bee_fly.png")]
        let flyAction = SKAction.animate(with: flyFrames, timePerFrame: 0.14)
        flyAnimation = SKAction.repeatForever(flyAction)
    }
    
    func onTap() {       
    }
}
