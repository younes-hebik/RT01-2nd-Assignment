# Assignment 2 - RT1 ROS Nodes

## Overview
This repository contains the solution for the second assignment of the RT1 course. The assignment involved the creation of ROS nodes in C++ to perform specific tasks related to robot navigation and information retrieval.

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

nodes
====

First of all I created the WorkSpace and in the /src file of the workspace I cloned the package Assignment_2_2023 and i inserted the two files in the same package 

These are some useful commands for running nodes and setting up the workspace.

To build the workspace, we use the comand  catkin_make

To run a node, we use the comand  rosrun <package_name> <node_name(executable)>.

To launch a file , we use the comand  rolaunch <package_name> <launch_file>.

I created the c++ files for my nodes inside /assignment_2_2023/src:

Action Client node (node_A1):
The action client node is responsible for allowing the user to set a target or cancel it. I implemeted it using the action client syntax. The script does the following:
This node imports various modules, including rocpp for ROS functionality, actionlib for creating the action client.

Defines the action_client function, which creates an action client that connects to an action server at the /reaching_goal topic. The function then enters a loop that ask the user to choose between three choices of sending target or canceling it,or get the information about the robot if the user enter anything else than choices it exit.
The PseudoCode of the this node can be the following :
Define main function:
    creating and initializing node
    Initialize the client that send a goal to the action server.
    call main function
    While True:
        Ask the user to enter choice
        1. for sending goal
        2. for canceling
        If (choice = 1)
           Ask user to set target
           initializing the goal
           sendGoal
           send robot to desired target
        elseif (choice = 2)
            cancelGoal
elseif (choice = 3)
     goalstatus
        else 
            exit the program.

