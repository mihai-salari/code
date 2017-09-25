import SpriteKit

class Ground: SKSpriteNode, GameSprite {
    var textureAtlas: SKTextureAtlas = SKTextureAtlas(named: "ground.atlas")
    var groundTexture: SKTexture? // to store the current ground texture
    
    func spawn(parentNode: SKNode, position: CGPoint, size: CGSize) {
        parentNode.addChild(self)
        self.size = size
        self.position = position
        
        // This is one of those unique situations where we use non-default
        // anchor point. By positioning the ground by its top left corner, we
        // can place it just slightly above the bottom of the screen, on any
        // of screen size
        self.anchorPoint = CGPoint(x: 0, y: 1)
        
        // Default to the ice texture
        if groundTexture == nil {
            groundTexture = textureAtlas.textureNamed("ice-tile.png")
        }
        
        // Create child nodes to repeat the texture
        createChildren()
    }
    
    func createChildren() {
        if let texture = groundTexture {
            var tileCount: CGFloat = 0
            let textureSize = texture.size()
            
            // We will size the tiles at half the size of their texture for
            // retina sharpness
            let tileSize = CGSize(width: textureSize.width/2, height: textureSize.height/2)
            
            // Build nodes until we cover the entire ground width
            while tileCount * tileSize.width < self.size.width {
                let tileNode = SKSpriteNode(texture: texture)
                tileNode.size = tileSize
                tileNode.position.x = tileCount * tileSize.width
                
                // Position child nodes by their upper left corner
                tileNode.anchorPoint = CGPoint(x: 0, y: 1)
                
                // Add the child texture to the ground node
                self.addChild(tileNode)
                
                tileCount += 1
            }
        }
    }
    
    func onTap() {
    }
}
