// Global settings
#set page(paper: "a4")
#set par(
  justify: true,
)
#set text(
  font: ("Times New Roman"),
  lang: "en",
  size: 12pt,
  fallback: false,
  hyphenate: false
)
#set heading(numbering: "1.")

#show heading: it => block[
  #text(size: 12pt)[#it]
]

// #show heading.where(level: 2) : it => block[
//   #text(size: 12pt)[#it]
// ]

// Cover page

#align(horizon)[
  #align(center)[
    #image("apu_logo.png", width: 200pt)

    *INDIVIDUAL ASSIGNMENT*

    *RESEARCH METHODS FOR COMPUTING AND TECHNOLOGY*

    #table(
      columns: (1fr, 2fr),
      inset: 10pt,
      align: horizon,

      align(left)[*Student Name*], align(left)[Cheng Yi Heng],
      align(left)[*TP Number*], align(left)[TP058994],
      align(left)[*Intake Code*], align(left)[APU2F2305CGD],
      align(left)[*Module Code*], align(left)[CT098­3­2­RMCT],
      align(left)[*Lecturer Name*], align(left)[Assoc. Prof. Ts. Dr. Tan Chin Ike],
      align(left)[*Hand Out Date*], align(left)[7#super[th] November 2023],
      align(left)[*Hand In Date*], align(left)[19#super[th] February 2024],
    )
  ]
]

#pagebreak()

// ======================================
// Content page start
// ======================================
#align(center)[
  #text(size: 16pt)[*Exploring Deep Learning Approaches for Real-Time Interactive Character Animation*]
  // #text(size: 16pt)[*Improving Immersion of Real-Time Interactive Character Animation with Deep Learning*]

  Yi Heng Cheng

  #link("mailto:voxell.technologies@gmail.com")
]

#show: rest => columns(2, rest)

// *_Abstract_--- Xxx*

// *_Index Terms_*

// Character Animation, Deep Learning, Neural Networks, Interactive, Real-time

// = Introduction

= Literature Review

== Introduction

This review is divided into several sections.
The first section will discuss about the evolution of animation.
The following section will be a deep dive into the research that has been done to create the technologies needed to make interactive character animation possible.
Finally, we look into the recent advancements of deep learning that could possibly propel the interactive character animation standards.

== Evolution of Animation

Animation in its simplest form is a sequence of actions that when played in a sequential manner, produces an illusion of movement.
In the beginning, all animations are offline or pre-recorded in some form before displaying it to its audience.
As oppose to many real-time animations we see today, especially in games, offline animations are not interactable, and thus only fits the purpose of the film industry.

Animation production started off with hand-drawn animations.
From the 1940s to the 1980s, hand-drawn animations was the main mode of output in the animation industry @lamotte2022discovering.
An animation is produced frame-by-frame, requiring prodigious quanitites of labor for the construction of a 24 frames per second film @baecker1969picture.
It was slow and ineffective, but it was the only choice given the state of the technology at that time.

The emergence of computer-assisted animation started gaining popularity during the 1970s @lamotte2022discovering.
Computer graphics systems strive to create a better experience to replace the drawing and painting process, widely known as the "Ink and Paint" process at that time.
TicTacToon was a method that proposes a paperless 2D animation production line @fekete1995tictactoon.
Motion capture was also introduced using potentiometers to track the movement of the human body @sturman1994brief @gleicher1999animation.

Starting around 2000s, purely computer generated images (CGI) has started to become possible.
Computer graphics systems had evolved to be able to render 3D objects.
A tremendous improvement in CGI can be seen from the film _Tron: Legacy_ that was released in December 2010 and in production since 2009.
There were also 3D released games with 3D interactive animations like _Halo: Combat Evolved_, _Gears of War_, and _Half-Life_.

== Interactive Character Animation
/*
- Methods of character skinning
- Animation blending
- State machine graph
- Inverse kinematic
*/

Interactive character animation is made up of multiple underlying technologies.
It is a subset of animation where characters are typically animated using a rig which deforms a mesh made up of triangles that is rendered onto the screen in real-time.
The end goal is to create a system that is capable of providing visual feedback of character movements for users in real-time applications.

=== Mesh Skinning

Skinning is the process of performing mesh deformation according to a function of skeletal poses @rumman2016state.
In character animation, it is important to adopt a skinning method that is high in fidelity and performance.
In this section, we will explore the various methods of skinning that had been developed over the years as well as their pros and cons.

Linear Blend Skinning (LBS) is a commonly used method in character animation where each vertex of the character mesh is influenced by a weighted sum of the transformations of nearby bones @lander1998skin.
It is being used in _AAA_ game engines like Unity3D and Unreal Engine.
LBS is known for its fast and simple algorithm that maps advantageously to the graphics hardware.

Spherical Blend Skinning (SBS) is another form of skinning method that employs spherical interpolation to smoothly blend between bone transformations @kavan2005spherical.
SBS aims to solve the "lost of volume" artifact that LBS brings despite its efficient algorithm.

To solve the computational and memory overhead that SBS brings, #cite(<kavan2007skinning>, form: "prose") propose Dual Quaternion Blending (DQB).
DQB uses dual quaternions to represent both translation and rotation, allowing for more accurate and natural deformations of the character mesh.
Unlike SBS, it does not require additional memory to cache rotation centers.
The DQB method is also extremely efficient.
However, DBQ comes with a limitation, it only supports rigid transformation and is not suitable for scaling or shearing effects.

=== Inverse Kinematics

Inverse kinematics (IK) is widely used in video games and robotics to create realistic poses within a defined constraint.
In short, the ultimate goal of IK is to determine an appropriate joint configuration that allow the end effectors to reach a target position @aristidou2018inverse.

One use case of IK is to perform animation retargeting to map movements between characters with different proportions @molla2017egocentric.
In the context of interactive applications like games, IK can also be used to perform secondary motions on top of an already playing animation @ruuskanen2018inverse.
For example, turning the head towards an interest point, or moving the hand towards a target position.

At its current state, there is a total of 4 main categories towards IK:

+ *Analytical*

  Analytical IK solvers aim to determine all potential solutions based on mechanism lengths, initial posture, and rotation constraints. They often rely on assumptions to compute a single solution.

+ *Numerical*

  Numerical methods often require a set of iterations to achieve a satisfactory approximation by minimizing a predefined cost function.

+ *Data-Driven*

  Data-driven methods relies on large accurate animation databases. Most data-driven methods employs some kind of machine learning algorithms to learn from the dataset.

+ *Hybrid*

  The hybrid method is simply a way of combining 2 or more different IK methods into a single solution.

=== Physics Based Character Animation

Physics based character animation offers a completely new solution for developers to prioritize physics accuracy over animation precision.
It forces characters to obey the laws of physics like preventing collisions between collidable objects and interacting with external forces such as gravity, pressure, etc @ye2016physics.

Authoring physics based character animation can be extremely hard.
This is due to the unpredictability of the physical world.
For example, a character might accidentally get hit by a physical object during runtime, resulting in unexpected movements or behaviors that can disrupt the intended animation sequence.

A major limitation of physics based animation is the inability to precisely control the artistic intent for achieving specific visual effect.
Additionally, ensuring computational efficiency while simulating complex physical interactions adds another layer of challenge to the authoring process.

=== Animation System

Multiple animation clips are normally used in interactive environments to create a variety of dynamic motions.
In a conference talk by #cite(<holden2018character>, form: "prose"), he mentioned that Assassin's Creed Origins had around 15,000 animations in the game.
These animations are needed to be handled by an animation system to systematically select the correct animation clips to sample depending on the current scenario.

Game engines like Unity3D uses a hierarchical state machine (HSM) graph, shown in @mechanim. It controls the sampling of animation clips and the transition between them.

#figure(
  image("./images/unity mechanim.jpg"),
  caption: [Unity's Mechanim],
) <mechanim>

This allows developers to divide complex systems into smaller isolated modules @berg2023animation.
During runtime, the animation system will traverse the state machine graph and subsequently transition to the animation clip it reaches.

In some cases, animators would also like to mix and match different animation clips together. For example, an in between animation of walking and jogging to produce a slow jog.
This can be achieved using a method called blend trees @berg2023animation.

Another method known as motion blending is also used to apply motion trajectories onto the rig, based on a weighted sum of multiple animation clips @menardais2004motion.

#figure(
  image("./images/unity mechanim blend tree.png"),
  caption: [Blend tree.],
) <blendtree>

This can create interesting motion dynamics like a walking animation clip towards the lower body part and a punching animation towards the upper body part.

== Deep Learning in Animation
/*
Deep Learning for Animation

- Cyclic based deep learning
  - Phased function neural network
  - Local motion phases
  - Deep phase: periodic autoencoders for learned motion phase manifold

- Reinforcement learning based
  - Adversarial skill embeddings (ASE)
*/

=== A Brief History of Deep Learning

=== Using Deep Learning to Drive Character Animation
// Learned motion matching
// KNN for motion matching

The key idea of using neural networks is to attempt to generalize the problem and solve the scalability issue of many traditional animation systems.

= Methodology

== Target user

/*
- Game developers
- Gamers
*/

== Sampling method

== Data collection method

= Conclusion

Real-time interactive character animation contributes largely into the immersion of interactive applications such as games.
Constructing such system that can react realistically and naturally to dynamic environments is extremely challenging without incorporating machine learning components.
Thanks to the adoption of neural networks and the abundance of accelerated computing of GPUs in recent years, the animation industry has been able to benefit from it by harnessing the enormous learning capability of neural networks to revolutionize the interactive application industry.

#set par(first-line-indent: 0pt)

// ======================================
// Bibliography start
// ======================================

= References
#bibliography("citation.bib", title: none, full: true, style: "apa")
