// Global settings
#set page(paper: "a4")
#set par(justify: true, first-line-indent: 16pt)
#set text(
  font: ("Times New Roman"),
  lang: "en",
  size: 12pt,
  // fill: navy,
  fallback: false
)
#set heading(numbering: "1.")

#show heading.where(level: 1) : it => block[
  #text(size: 12pt)[#it]
]

#show heading.where(level: 2) : it => block[
  #text(size: 12pt, style: "italic", weight: "regular")[#it]
]

// Asia Pacific University

// CT098-3-2-RMCT: Research Methods for Computing and Technology

// Assoc. Prof. Ts. Dr. Tan Chin Ike

// #datetime.today().display("[month repr:long] [day], [year]")

// ======================================
// Content start
// ======================================

// Cover page
// TODO: Create cover page!

// ======================================
// Content page start
// ======================================
#align(center)[
  #text(size: 16pt)[*Exploring Deep Learning Approaches for Real-Time Interactive Character Animation*]

  Yi Heng Cheng

  #link("mailto:voxell.technologies@gmail.com")
]

#show: rest => columns(2, rest)

*_Abstract_--- Deep learning, in particular, neural networks has proven to be capable of solving a wide variety of complex tasks. Multiple research on deep learning based approach for character animation has been proposed to utilize the enormous learning capabilities of neural networks for generating dynamic animation for real-time interactive applications like games. This article explores a wide variety of deep learning approaches towards interactive character animation. Each method was investigated based on their strengths, limitations, and novel contributions. A comparison were also performed based on their evaluation results.*
// TODO: Conclusion

*Keywords:* Character Animation, Deep Learning

= Introduction

/*
1. Background/History
  - Skinning
  - Keyframes
  - State machine
  - IK
2. Types of deep learning approaches
  - Physics based (learn the physics world while mimicking animation data)
  - Non-physics based (learn purely from animation data)
3. Mini summary?
*/
Interactive character animations are typically carried out through skeletal motions of an articulated figure. This is achieved using a technique called skinning, which deforms the surface of the character based on bone transformations, particularly, the position, orientation, and sometimes the scale of the bones @rumman2016state. Animation software like Blender allow animators to author animations using keyframes. Each keyframe stores a snapshot of a character pose which consists of multiple bone transforms. When an animation is being played during runtime, the software interpolates between these keyframes, producing a fluid motion.

Relying soley on manual animation authoring can be extremely inefficient. Motion capture was widely used during the process of animation authoring. Motion capture generates animations by tracking and recording moving objects in the physical space @menolotto2020motion. The raw data from motion capture will then be cleaned and refined by animators before it is being used in production. In addition, inverse kinematics can also be used to generate runtime animation layering such as orienting the head towards an interest point or positioning the hands on an object correctly @rose2001artist.

Runtime usage of animation is normally done using some form of state machine where developers were tasked to manually map different states to their desired animations. This is done such that the character can react accordingly to different scenarios that may happen during runtime. To address this problem, motion matching was proposed by #cite(<buttner2015motion>, form: "prose"), which opens the possibility of using unstructured animation data. This method performs a search from a large database to find an animation sequence that best fit the current context, namely, the current pose and the current trajectory of the character.

= Problem Statement

/*
1. Traditional state machine approach is very manual. Tedious for artists to craft a well made animation.
2. Motion capture raw data is messy. Cleaning them up into a seamless loop cycle may take up alot of time.
3. Motion matching only search for existing data, unable to perform seamless transition if there is lacking of data. Fixing this issue results in using a large database which fills up the memory, and also takes up more time for animation lookup.
4. In between transitions of different animation sequences still relies on simple blending.
*/
The traditional approach of animation authoring for real-time interactive scenarios consists of the following steps:

+ Prepare a set of looping or one off animations.
+ Create a state machine that maps user intentions to the desired animations.

This approach is straightforward and simple to implement, however, it does not scale well and is not robust to changes. It also requires a huge amount of manual labor to develop a decent looking animation system.

= Research Aims

The aim of this research is to explore the potential of deep learning techniques for producing character animation that can react naturally to dynamic and unpredictable factors such as terrain changes and user interactions.

= Research Objectives

+ Evaluate the strengths and weaknesses of different deep learning approaches in character animation.
+ Comparison of different deep learning techniques for character animation.
+ Exploring ways for incorporating this technique into real+time application development.

= Research Questions

+ How does deep learning contribute to the enhancement of character animation in interactive environments?
+ What are the types of deep learning techniques for character animation?
+ What is the impact of deep learning in real-time interactive character animation industry?
// + How can these deep learning methods be incorporated into the modern game development pipeline?

= Research Significance
#lorem(50)

= Overview of the Proposed System
#lorem(50)

= Conclusion
#lorem(30)

#set par(first-line-indent: 0pt)

// ======================================
// Bibliography start
// ======================================

= References
#bibliography("citation.bib", title: none, full: true, style: "apa")
