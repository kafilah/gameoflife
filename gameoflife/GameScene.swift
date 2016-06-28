//
//  GameScene.swift
//  gameoflife
//
//  Created by Kafilah on 6/27/16.
//  Copyright (c) 2016 Kafilah. All rights reserved.
//

import SpriteKit


class GameScene: SKScene {
    
    
    /* UI Objects */
    var stepButton: MSButtonNode!
    var populationLabel: SKLabelNode!
    var generationLabel: SKLabelNode!
    var playButton: MSButtonNode!
    var pauseButton: MSButtonNode!
    
    /* Game objects */
    var gridNode: Grid!
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        /* Connect UI scene objects */
        stepButton = childNodeWithName("stepButton") as! MSButtonNode
        populationLabel = childNodeWithName("populationLabel") as! SKLabelNode
        generationLabel = childNodeWithName("generationLabel") as! SKLabelNode
        playButton = childNodeWithName("playButton") as! MSButtonNode
        pauseButton = childNodeWithName("pauseButton") as! MSButtonNode
        
        
        /* Setup testing button selected handler */
        stepButton.selectedHandler = {
            self.stepSimulation()
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        }
    
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    
    func stepSimulation() {
        /* Step Simulation */
        
          gridNode = childNodeWithName("gridNode") as! Grid
        
        /* Run next step in simulation */
        gridNode.evolve()
        
        /* Update UI label objects */
        populationLabel.text = String(gridNode.population)
        generationLabel.text = String(gridNode.generation)
    }
}
