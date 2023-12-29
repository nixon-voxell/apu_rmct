// Global settings
#set page(paper: "a4")
#set par(
  justify: true,
  // first-line-indent: 16pt
)
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

*_Abstract_--- Deep learning, in particular, neural networks has proven to be capable of solving a wide variety of complex tasks. Multiple research on deep learning based approach for character animation has been proposed to utilize the enormous learning capabilities of neural networks for generating dynamic animation for real-time interactive applications like games. This article explores a wide variety of deep learning approaches towards interactive character animation. Each method was investigated based on their strengths, limitations, and novel contributions. A comparison were also performed based on their evaluation results. Throughout our research, we found that the use of deep learning can drastically improve the quality of runtime animation in dynamic settings. Neural networks are capable of adapting to unseen data, filling in the gaps where needed, and even react to the physical environment accurately.*

*_Index Terms_*

Character Animation, Deep Learning, Neural Networks, Interactive, Real-time

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

Relying solely on manual animation authoring can be extremely inefficient. Motion capture was widely used during the process of animation authoring. Motion capture generates animations by tracking and recording moving objects in the physical space @menolotto2020motion. The raw data from motion capture will then be cleaned and refined by animators before it is being used in production. In addition, inverse kinematics can also be used to generate runtime animation layering such as orienting the head towards an interest point or positioning the hands on an object correctly @rose2001artist.

Runtime usage of animations is normally done using some form of state machine. Developers were tasked to manually map a diverse set of animations to their target states. These states are then connected usually in the form of graph, allowing the character to react accordingly to different scenarios that may happen during runtime by traversing the graph. This method does not adapt well to development changes, adding a new state might result in significant modifications on the existing state graph, making it hard to maintain. To address this problem, motion matching was proposed by #cite(<buttner2015motion>, form: "prose"), which opens the possibility of using unstructured animation data. This method performs a search from a large database to find an animation sequence that best fit the current context, namely, the current pose and the current trajectory of the character @clavet2016motion.

In recent years, deep learning techniques such as the Transformer neural network has proven to be capable of learning large unstructured data and construct pattern to perform complex human level tasks such as language translation @vaswani2017attention. Deep learning, which is a subset of machine learning, enables developers to overcome the traditional approach of having to solve everything manually. Instead, it learns from the data provided in a goal-centric manner, which maps nicely to the animation problem. In this paper, we will examine the techniques available and provide some insights based on the discoveries.

= Problem Statement

/*
1. Traditional state machine approach is very manual. Tedious for artists to craft a well made animation.
2. Motion capture raw data is messy. Cleaning them up into a seamless loop cycle may take up alot of time.
3. Motion matching only search for existing data, unable to perform seamless transition if there is lacking of data. Fixing this issue results in using a large database which fills up the memory, and also takes up more time for animation lookup.
4. In between transitions of different animation sequences still relies on simple blending.
*/
Creating decent looking character animation system for complex behaviors and scenarios often require very large and manually authored animation sequences @harvey2020robust. Motion capture can be used to generate animations and motion matching can be a great candidate for replacing the traditional data-driven graph traversal method.

However, these new techniques come with a cost. The use of motion capture introduces the need to clean up animations. Due to the heavy reliance of the animation dataset, motion matching is unable to perform seamless transitions if the data is lacking. This results in the use of large animation database, filling up the memory during runtime and a generally more computationally expensive animation lookup @holden2020learned. Additionally, of all the techniques above, in between transitions of different animation sequences still relies heavily on simple blending. This means that if no sample data are available on how 2 different animation states blends, the resulting transition might look unnatural. Finally, these animation systems lack the capability of reacting to the physical world accurately such as losing balance when tripping over an obstacle @peng2018deepmimic @peng2022ase.

= Research Aims

The aim of this research is to explore the potential of deep learning techniques for producing fluid character animation that can react naturally to dynamic and unpredictable factors such as terrain changes and user interactions.

= Research Objectives

+ Evaluate the strengths and weaknesses of different deep learning approaches in character animation.
+ Comparison of different deep learning techniques for character animation.
+ Exploring ways for incorporating these techniques into real-time application development.

= Research Questions

+ How does deep learning contribute to the enhancement of character animation in interactive environments?
+ What are the types of deep learning techniques for character animation?
+ What is the impact of deep learning in real-time interactive character animation industry?

= Research Significance
/*
1. Fluid and natural looking animation is crucial for the immersion of real-time interactive applications.
2. Performing such task can be very tedious and costly.
3. Deep learning offers a way to streamline these processes by learning from large unstructured animation dataset and "compresses" them for affordable runtime inferencing.
4. Because of the learning nature of neural networks, it can also generate animation for unseen circumstances.
5. Multiple deep learning approaches has been proposed to tackle this problem.
*/
Fluid and natural looking animation is crucial for the immersion of real-time interactive applications. Performing such task can be very tedious and costly. Recent findings show that deep learning offers a way to streamline these processes by learning from large unstructured animation dataset and "compresses" them for limited runtime inferencing budget @holden2020learned @starke2022deepphase @starke2020local @peng2022ase @peng2018deepmimic. Because of the learning nature of neural networks, it can also generate animation for unseen circumstances, solving the memory issue that motion matching poses @holden2020learned. Overcoming these issues will allow the interactive industry to be one step ahead in achieving a more immersive experience.

// Learned motion matching, proposed by #cite(<holden2020learned>, form: "prose"), aims to solve this memory problem by replacing the 3 key stages of motion matching - _Projection_, _Stepping_, and _Decompression_ with neural networks.

= Conclusion

Real-time interactive character animation contributes largely into the immersion of interactive applications such as games. Constructing such system that can react realistically and naturally to dynamic environments is extremely challenging without incorporating machine learning components. Thanks to the adoption of neural networks and the abundance of accelerated computing of GPUs in recent years, the animation industry has been able to benefit from it by harnessing the enormous learning capability of neural networks to revolutionize the interactive application industry.

#set par(first-line-indent: 0pt)

// ======================================
// Bibliography start
// ======================================

= References
#bibliography("citation.bib", title: none, full: true, style: "apa")
