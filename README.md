![Static Badge](https://img.shields.io/badge/2022-orange)
![Static Badge](https://img.shields.io/badge/development-yellow)
![Static Badge](https://img.shields.io/badge/JMP-blue)

![Thumbnail](https://raw.githubusercontent.com/4nuG/Animation-Project/main/Animation_Project.png)

# Table of Contents

- [Project Summary](#project-summary)
  - [Overview](#overview)
  - [Story Outline](#story-outline)
    - [Part 1: Chiara](#part-1-chiara)
    - [Part 2: Anushreeya](#part-2-anushreeya)
    - [Part 3: Jake](#part-3-jake)
    - [Part 4: Cole](#part-4-cole)
    - [Part 5: Nivedha](#part-5-nivedha)
    - [Ending](#ending)
  - [Functions](#functions)
    - [Sheer Function](#sheer-function)
    - [Rotation Function](#rotation-function)
    - [Shift Function](#shift-function)
    - [Morph Function](#morph-function)
    - [Translate Function](#translate-function)

# Project Summary
### Overview

This GitHub project was a collaborative effort to create a captivating animated story using MATLAB. Each contributor was responsible for a specific part of the animation, adding unique motions and transformations to bring the story to life.

## Story Outline

### Part 1: Chiara
- Motion 1: Jack o’lantern morphs into the witch
- Motion 2: Magic book appears, flies to the cauldron, and spins into it
- Motion 3: Cauldron stirs magically

### Part 2: Anushreeya
- Motion 1: Mouse flies out of the pot
- Motion 2: Witch and mouse chase each other
- Motion 3: Mouse and witch run off the screen

### Part 3: Jake
- Both characters run left on the screen
- Witch casts a spell, oscillating with the wand
- Mickey Mouse morphs into a ghost, then the ghost flies away

### Part 4: Cole
- Zoom out to the whole world
- Fly around the world
- Land in the North Pole

### Part 5: Nivedha
- Character lands in the North Pole
- Background changes to the North Pole with a ghost in the scene
- Character turns into a gingerbread man

### Ending
- Display a "Happy Holiday" sign

## Functions
The project utilizes several MATLAB functions for transformations and animations:

### Sheer Function
[matrix] = sheer(matrix, sheerfactor)

### Rotation Function
[matrix] = rotation(matrix, degree)

### Shift Function
[matrix] = shift(matrix, steps/direction)

- Positive steps move right, negative steps move left

### Morph Function
function [A, B, M] = morph(A, B, M)

- Morphs input A into B with the option to translate using an additional matrix M
- If no translation is intended, set M as the identity matrix

### Translate Function
function [newrat, A] = Move(N, A)

- Takes in a set of points and a matrix, moves it to the center, multiplies by the matrix, and moves back to the original position.

Feel free to explore each contributor's section and the collaborative effort in creating this animated holiday story!
