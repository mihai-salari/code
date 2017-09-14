//: Playground - noun: a place where people can play

import Cocoa

struct Vector {
    var x: Double
    var y: Double
    
    var length: Double {
        return sqrt(x*x + y*y)
    }
    
    init() {
        self.init(x: 0, y: 0)
    }
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    func vectorByAddingVector(_ vector: Vector) -> Vector {
        return Vector(x: self.x + vector.x, y: self.y + vector.y)
    }
    
    static func +(left: Vector, right: Vector) -> Vector {
        return left.vectorByAddingVector(right)
    }
    
    static func *(left: Vector, right: Double) -> Vector {
        return Vector(x: left.x * right, y: left.y * right)
    }
    
    static func -(left: Vector, right: Vector) -> Vector {
        return Vector(x: left.x - right.x, y: left.y - right.y)
    }
}

let gravity = Vector(x: 0.0, y: -9.8)
gravity.x
gravity.y

let g0 = Vector()
g0.x
g0.y

let twoGs = gravity.vectorByAddingVector(gravity)
twoGs.x
twoGs.y

let twoGs1 = gravity + gravity
twoGs1.x
twoGs1.y

let twoGs2 = gravity * 2.5
twoGs2.x
twoGs2.y

class Particle {
    var position: Vector
    var velocity: Vector
    var acceleration: Vector
    
    init(position: Vector) {
        self.position = position
        self.velocity = Vector()
        self.acceleration = Vector()
    }
    
    convenience init() {
        self.init(position: Vector())
    }
    
    func tick(_ dt: TimeInterval) { // dt in second (double)
        self.velocity = self.velocity + self.acceleration * dt
        self.position = self.position + self.velocity * dt
        self.position.y = max(0, self.position.y)
    }
}

class Simulation {
    var particles: [Particle] = []
    var time: TimeInterval = 0.0
    
    func addParticle(_ particle: Particle) {
        self.particles.append(particle)
    }
    
    func tick(_ dt: TimeInterval) {
        for particle in particles {
            particle.acceleration = particle.acceleration + gravity
            particle.tick(dt)
            particle.acceleration = Vector()
            particle.position.y
        }
        
        time += dt
        
        particles = particles.filter { particle in
            let live = particle.position.y > 0.0
            
            if !live {
                print("Particle terminated at time \(self.time)")
            }
            
            return live
        }
        
        //print("Particles count is \(particles.count)")
    }
}

class Rocket: Particle {
    let thrust: Double
    var thrustTimeRemaining: TimeInterval
    let direction = Vector(x: 0, y: 1)
    
    init(position: Vector, thrust: Double, thrustTime: TimeInterval) {
        self.thrust = thrust
        self.thrustTimeRemaining = thrustTime
        
        super.init(position: position)
    }
    
    convenience init(thrust: Double, thrustTime: TimeInterval) {
        self.init(position: Vector(), thrust: thrust, thrustTime: thrustTime)
    }
    
    override func tick(_ dt: TimeInterval) {
        let parachute = Vector(x: 0, y: -9.0)
        
        print("LOG: thrustTimeRemaining is \(thrustTimeRemaining)")
        
        if self.thrustTimeRemaining > 0.0 {
            let thrustTime = min(dt, thrustTimeRemaining)
            let thrustToApply = self.thrust * thrustTime
            let thrustForce = self.direction * thrustToApply
            acceleration = acceleration + thrustForce
            self.thrustTimeRemaining -= thrustTime
        } else {
            acceleration = acceleration - parachute
        }
        
        super.tick(dt)
        
        print("LOG: (\(self.position.x), \(self.position.y))")
    }
}

extension Vector: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}

// Main

let simulation = Simulation()
//let ball = Particle()

//ball.acceleration = Vector(x: 0, y: 100)
//simulation.addParticle(ball)

let rocket = Rocket(thrust: 10.0, thrustTime: 60.0)
simulation.addParticle(rocket)

while simulation.particles.count > 0 && simulation.time < 500 {
    simulation.tick(1.0)
}
