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

#show heading.where(level: 4) : it => block[
  #text(size: 12pt, style: "italic", weight: "regular")[#it]
]

// Cover page

#align(horizon)[
  #align(center)[
    #image("./images/apu_logo.png", width: 200pt)

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

Animation has evolved significantly from its origins to become a cornerstone of entertainment and communication. 
This review delves into 3 three key areas.
The first section will discuss about the evolution of animation.
History is extremely important when it comes to understanding a field.
This section will bring about the advancement in animation over the past decades, providing a timeline and the potential future trajectory.
The following section will be a deep dive into the research that has been done to create the technologies needed to make interactive character animation possible.
Understanding the underlying technologies that made interactive animation possible is key to new innovations.
The final section will be about the recent advancements of deep learning that could propel the interactive character animation standards.
This section explores what had been done and the potential future of the interactive characater animation industry.
The type of sources that will be used in this chapter will primarily come from research articles.

== Evolution of Animation

Animation in its simplest form is a sequence of actions that when played in a sequential manner, produces an illusion of movement.
In the beginning, all animations are offline or pre-recorded in some form before displaying it to its audience.
As oppose to many real-time animations today, especially in games, offline animations are not interactable, and thus only fits the purpose of the film industry.

Animation production started off with hand-drawn animations.
From the 1940s to the 1980s, hand-drawn animations was the main mode of output in the animation industry @lamotte2022discovering.
An animation is produced frame-by-frame, requiring prodigious quanitites of labor for the construction of a 24 frames per second film @baecker1969picture.
It was slow and ineffective, but it was the only choice given the state of the technology at that time.

The emergence of computer-assisted animation started gaining popularity during the 1970s @lamotte2022discovering.
Computer graphics systems strive to create a better experience to replace the drawing and painting process, widely known as the "Ink and Paint" process at that time.
TicTacToon was a method that proposes a paperless 2D animation production line @fekete1995tictactoon.
Motion capture was also introduced using potentiometers to track the movement of the human body @sturman1994brief @gleicher1999animation.

Starting around 2000s, purely computer generated images (CGI) has started to become possible.
Computer graphics systems had evolved to be able to render 3D scenes.
A tremendous improvement in CGI can be seen from the film _Tron: Legacy_ which was released in December 2010 and in production since 2009.
There were also released 3D games with 3D interactive animations like _Halo: Combat Evolved_, _Gears of War_, and _Half-Life_.
This marks a significant change in the animation industry.

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
This section will explore the various methods of skinning that had been developed over the years as well as their pros and cons.

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
This allows developers to divide complex systems into smaller isolated modules @berg2023animation.
During runtime, the animation system will traverse the state machine graph and subsequently transition to the animation clip it reaches.

#figure(
  image("./images/unity mechanim.jpg"),
  caption: [Unity's Mechanim],
) <mechanim>

In some cases, animators would also like to mix and match different animation clips together. For example, an in between animation of walking and jogging to produce a slow jog.
This can be achieved using a method called blend trees @berg2023animation.

#figure(
  image("./images/unity mechanim blend tree.png"),
  caption: [Blend tree.],
) <blendtree>

Another method known as motion blending is also used to apply motion trajectories onto the rig, based on a weighted sum of multiple animation clips @menardais2004motion.
This can create interesting motion dynamics like a walking animation clip towards the lower body part and a punching animation towards the upper body part.

== Deep Learning in Animation

=== A Brief History of Deep Learning

In 1943, neurophysiologist Warren McCulloch and mathematician Walter Pitts published an article titled _"A Logical Calculus of the Ideas Immanent in Nervous Activity"_ @mcculloch1943logical.
In it, they described how neurons in brain might work and modeled a simple neural network using electrical circuits.
It was an attempt to understand how the human brain works and more importantly, how it learns.

The first artificial neural network (ANN) called Perceptron was invented by Frank Rosenblatt @rosenblatt1958perceptron.
Perceptron was able to model functions that are determined by linearly separable data.
Activation functions were used to introduce non-linearity into the network, e.g. Sigmoid, ReLU, and Leaky ReLU @sharma2017activation.

Deep neural networks can solve many hard computational tasks like image recognition using convolutional neural networks (CNN) @lecun1998gradient.
Recurrent neural networks (RNN) were also introduced to tackle sequential data @rumelhart1985learning.
An improved version of RNN known as the Long Short-Term Memory (LSTM) was proposed to solve more complex and longer sequential tasks @memory2010long.

In an article titled _"Attention Is All You Need"_, the authors revolutionized the deep learning industry by introducing the Transformer model @vaswani2017attention.
The Transformer model is capable of performing all kinds of tasks from learning sequential data for human conversation like Llama 2 to speech recognition like Whisper @touvron2023llama @radford2023robust.

=== Using Deep Learning to Drive Character Animation
/*
- Cyclic based deep learning
  - Phased function neural network
  - Local motion phases
  - Deep phase: periodic autoencoders for learned motion phase manifold

- Reinforcement learning based
  - Adversarial skill embeddings (ASE)

- Learned motion matching
*/

==== Motion Matching

Traditional HSM methods tightly couples the animation data with the states @holden2018character.
A better approach to this problem is to store all animation data into a database and tag them with their related traits, e.g. walk, idle, run. etc.
Immediately, all of the animation data now form a relation based on similar tags they share.
Getting an animation from the database can be done by querying the specifc traits that is needed.

To improve this system further, character data and important animation state can also be incorporated as traits in the animation database, e.g. velocity of the character, location of the hip bone, etc.
This way, getting a specific animation clip becomes more like a matching system rather than a query system.
Developers can now find the best match animation based on the current and desired character state alone, without the need of any state machines.
This method is widely known as motion matching, a data-driven approach towards character animation @buttner2015motion.

#figure(
  image("./images/motion matching.png"),
  caption: [Motion matching.],
) <motionmatching>

==== Deep Learning

The key idea of using neural networks is to attempt to generalize the problem and solve the scalability issue of many traditional animation systems @holden2018character.
Other than scalability, neural networks also proof to be fast and memory efficient.
No animation data is required during runtime when inferencing a sufficiently trained neural network.

Phase-Functioned Neural Network (PFNN) introduces the idea of using a phase function to generate weights for a regression network which in turn generates the animation @holden2017phase.
Not all animations have a phase, in addition, labeling the phase variable to each animation can be a laborious task.
To solve this, a new neural network architecture called Mode-Adaptive Neural Networks (MANN) is proposed to remove the phase label and replace it with a gating network @zhang2018mode.
Local Motion Phases (LMP) removes the dependency of a global phase variable in favor of multiple independent local phases for each bone @starke2020local.
The local phase is defined based on the contact between each bone and the environment.
Instead of defining phases manually, #cite(<starke2022deepphase>, form: "prose") proposes Deep Phase, a periodic autoencoders for learning motion phase manifolds automatically.
The authors stated that the learned motion phase can also potentially be used for motion matching and reinforcement learning.
 Learned motion matching presents a learned alternative towards the highly flexbily and low pre-processing time method, motion matching.
It promises to retain high quality animation data and quick iteration time while preserving the scalability of a neural network approach @holden2020learned.

Deep learning also tremendously benefit the world of physics based animation.
Deep Mimic uses deep reinforcement learning (RL) to learn control policies to imitate a variety of animation clips in a fully physics simulated scenario @peng2018deepmimic.
#cite(<peng2021amp>, form: "prose") proposes a fully automated adversarial RL system for physics based character animation to imitate behaviors from unstructured dataset.
In the following year, a better approach was introduced to allow physically simulated characters to learn reusable skill embeddings from large dataset of unstructured motion clips @peng2022ase.

== Conclusion

Creating scalable interactive character animation system is still a challenging and on going research topic.
While deep learning solves a lot of the scalability issue, every little change to the animation data would require an update towards the network.
Compared to systems like HSM and motion matching, this update is not instantaneous and might require a huge amount of computational power.
Besides, using new systems like motion matching and neural networks require animators to adapt and learn a new set of skills.
Further studies is needed to create highly scalable animation systems that can retain rich animation motion while shortening or even removing the retraining process of neural networks.

= Methodology

== Introduction

This chapter will discuss about the target users that are suitable for this research as well as providing insights into the strategies used to sample and collect data, and ultimately draw meaningful conclusions regarding the efficacy of deep learning for real-time interactive character animation.

== Target user
/*
- Game developers
- Animators
- Gamers
*/

The target users for this study encompass three primary groups: game developers, animators, and gamers.
Understanding the perspectives and requirements of each group is essential for designing deep learning approaches that are effective, user-friendly, and capable of enhancing the interactive character animation experience across various platforms.

+ *Game Developers*: These professionals play a crucial role in integrating character animation into interactive gaming environments.
  Their insights are invaluable for understanding technical constraints, performance requirements, and integration challenges associated with deploying deep learning techniques in real-time scenarios.

+ *Animators*: Animators possess expertise in crafting compelling character animations that resonate with audiences.
  Their input is essential for evaluating the artistic quality, expressiveness, and fidelity of animations generated using deep learning methods.

+ *AI Researchers*: Creating effective deep neural network architectures is not a simple task.
  Their expertise can provide valuable insights into the latest advancements, methodologies, and challenges in applying deep learning techniques to character animation.

+ *Gamers*: Ultimately, the success of interactive character animation lies in its reception by gamers (or interactive application users).
  Understanding their preferences, expectations, and experiences with character animations can provide valuable feedback on the effectiveness and immersion of deep learning-driven animations.

== Sampling method

We primarily focuses on using purposive sampling method so that participants can be selected based on their expertise and involvement in the field of character animation and interactive applications.
This method ensures that only individuals with relevant knowledge and experience are included in the study.
A total of 40 participants will be sampled, comprising 10 game developers, 10 animators, 10 AI researchers, and 10 gamers.
This sampling approach ensures that diverse perspectives are represented, enhancing the richness and depth of the data collected.

== Data collection method

The data collection method used invovles qualitative interviews.
In-depth interviews will be conducted with each participant, utilizing a semi-structured approach to explore their perspectives, challenges, and expectations regarding real-time interactive character animation and the potential role of deep learning techniques.
During these interviews, it is also allow for the flexibility to delve into more specifc topic of interest, providing rich insights regarding the area of expertise of the interviewee.

== Conclusion

By employing purposive sampling and qualitative data collection techniques, this chapter aims to gather comprehensive insights from game developers, animators, and gamers.
These insights will inform the development and refinement of deep learning techniques, ultimately enhancing the quality, realism, and interactivity of character animations in gaming and interactive media environments.

#set par(first-line-indent: 0pt)

// ======================================
// Bibliography start
// ======================================

= References
#bibliography("citation.bib", title: none, full: true, style: "apa")
