# Python Robotics Simulator Assignment

HADJ SAID Baba S5413915

## Assignment

In this assignment, a ROS package was developed to control a robot's movement and gather information about its position and speed. The package includes the following features:

- An action client node that allows the user to set a target (x,y) position for the robot or cancel the current goal.
- A publisher node that publishes the robot's current position and velocity as a custom message  using the /odom topic.
- A service node that prints the number of goals reached and canceled by the robot. 
- A subscriber node that listens to the robot's position and velocity and prints the distance of the robot from the target and the robot's average speed. This node also uses a parameter to set the frequency at which it publishes the information.
- A launch file to start the simulation and set the frequency for the subscriber node.<br/>


This package demonstrates the use of ROS actionlib, subscribers, publishers, and services to control and gather information about a robot's movement.
The following graph demonstrate the connection between nodes:
![Graph](rosgraph.png)

## Pseudocode

The content of the code is described by the following pseudocode:
- actionClient_node:(this the answer to first part of question 1 )
```console
    - Initialize a ROS node
    - Create an action client for the "reaching_goal" action
    - Wait for the action server to start
    - While (true)
        a. Ask the user to input a target position (x,y) or the option to cancel or exit
        b. If the user enters "c", cancel the current goal
        c. If the user enters "q", exit the node
        d. If the user enters a target position, create a goal with the x and y coordinates
        e. Send the goal to the action server
    - End the node
```
- duplicateOdom: (this the answer to second part of question 1 )
```console
    - Include necessary headers
    - Declare variables for linear and angular velocities and position
    - Create callback functions for odometry and cmd_vel subscribers
    - Initialize ROS node and subscribers
    - Declare publisher for duplicated odometry topic
    - Get publishing frequency from a parameter
    - Create a loop that runs at the specified frequency
    - Within the loop, populate a custom message with the stored position, linear velocity, and   angular velocity
        a. Publish the custom message
        b. Sleep for the specified time
        c. Spin once to process callbacks
    - Return 0 at the end of the main function
```
- custom_service: (this the answer to the question 2 )
```console
- Import necessary libraries and headers including ROS, actionlib, custom action message, std_msgs, and std_srvs.
- Declare global variables for goal status tracking and publisher for custom message.
- Define a callback function for subscribing to goal status updates, which increments counters for reached and cancelled goals and publishes the updates on a custom topic.
- Define a callback function for the custom service, which prints the number of reached and cancelled goals when called.
- In the main function, initialize a ROS node and create a subscriber to listen to the goal status topic.
- Create a publisher for the custom message topic and a service server for the custom service.
- Spin the ROS node to execute callbacks.
- End the main function and return 0.
```

- Subscriber: (this the answer to the question 3 )
``` console
- import necessary libraries and headers
- declare variables for custom message, goal, start and end time points, status, starting pose
- Define callback functions:
    a. MyCallBack: to get the status of the goal and calculate distance traveled and average speed when the status is reached
    b. CustomMessageCallback: to update the custom message 
    c. goalCallback: to update the goal and save the starting position
- Initialize the node
- Create subscribers for the custom message, goal, and status topic
- Spin the node to keep it running and wait for callbacks
- end the program
```

## How to run the code

To run the code, simply write the following command in the terminal:
    $ roslaunch client_action assignment2.launch
