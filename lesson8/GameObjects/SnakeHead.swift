import UIKit
class SnakeHead: SnakeBodyPart {
    override init(atPoint point: CGPoint){
        super.init(atPoint:point)
        // категория - голова
                self.physicsBody?.categoryBitMask = CollisionCategories.SnakeHead
        // пересекается с телом, яблоком и границей экрана
                self.physicsBody?.contactTestBitMask = CollisionCategories.EdgeBody | CollisionCategories.Apple | CollisionCategories.Snake
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
