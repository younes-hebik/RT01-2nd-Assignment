# Assignment 2 - RT1 ROS Nodes

## Overview
This repository contains the solution for the second assignment of the RT1 course. The assignment involved the creation of ROS nodes in Python to perform specific tasks related to robot navigation and information retrieval.

## Nodes

### 1. Node_A1 (Action Client)
- Allows a user to input a target position for a robot to navigate to.
- Supports canceling the operation and reassigning a new target destination.
- Implemented using an action client.

### 2. Node_A2
- Publishes the robot's position and velocity as a custom message.
- Utilizes values from the `/odom` topic.

### 3. Node_C (Service Node)
- Subscribes to the robot’s position and velocity.
- Implements a server to retrieve the distance of the robot from the target and the robot’s average speed.

## Launch File
To streamline the simulation, a launch file has been added to the `assignment_2_2022` package. Running this launch file will start all the nodes simultaneously, providing a convenient way to initiate the entire simulation.

## Usage
1. Clone this repository to your local machine.
   ```bash
   git clone https://github.com/your-username/assignment-2-rt1.git
