// Global settings
#set page(paper: "a4")
#set par(justify: true)
#set text(
  font: ("Times New Roman"),
  lang: "en",
  size: 12pt,
  // fill: navy,
  fallback: false
)

// Helper functions
#let title_section(body) = {
  [*#body*]
  linebreak()
}

#let content_section(body) = {
  parbreak()
  par(first-line-indent: 36pt)[#body]
}

// ======================================
// Content start
// ======================================

// Cover page
#align(horizon + center)[
  = Exploring Deep Learning Approaches for Real-Time Interactive Character Animation
  #linebreak()
  Cheng Yi Heng

  Asia Pacific University

  CT098-3-2-RMCT: Research Methods for Computing and Technology

  Assoc. Prof. Ts. Dr. Tan Chin Ike

  #datetime.today().display("[month repr:long] [day], [year]")
]

#pagebreak()
// ======================================
// Content page start
// ======================================

#title_section[Abstract]
#content_section[
  Deep learning, in particular, neural networks has proven to be capable of solving a wide variety of complex tasks. Multiple research on deep learning based approach for character animation has been proposed to utilize the enormous learning capabilities of neural networks for generating dynamic animation for real-time interactive applications like games. This article explores a variety of deep learning approaches towards interactive character animation. Each method was investigated based on their strengths, limitations, and novel contributions. A comparison were also performed based on their evaluation results.
// TODO: Conclusion
]

#content_section[*Keywords:* Character Animation, Deep Learning, Motion Matching]

#show: rest => columns(2, rest)

#title_section[Introduction]
#content_section[
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
  Interactive character animations are usually carried out through skeletal motions. This is achieved using a technique called skinning, which deforms the surface of the character through bone transformations, particularly the position, orientation, and sometimes the scale of the bones @skinning-techniques.
]

#title_section[Problem Statement]
#content_section[
  /*
  1. Traditional state machine approach is very manual. Tedious for artists to craft a well made animation.
  */
  The traditional approach of animation authoring consists of 2 main steps:
  1. Prepare a set of looping or one off animations.
  2. Create a state machine that maps user intentions to the desired animations.
  This approach is straightforward and simple to implement, however, it does not scale well and is not robust to changes. It also requires a huge amount of manual labor to develop a decent looking animation system.
]

#title_section[Research Aims]
#content_section[
  The aim of this research is to explore deep learning techniques for producing realistic character animation that can react to dynamic environmental factors such as terrain changes and user interactions.

  - Evaluate the strengths and weaknesses of different deep learning approaches in character animation.
  - Comparison of different deep learning techniques for character animation.
  - Exploring ways for incorporating this technique into real-time application development.
]

#title_section[Research Questions and Objectives]
#content_section[
  1. How does deep learning contribute to the enhancement of character animation in interactive environments?
  2. What are the types of deep learning techniques for character animation?
  3. What is the impact of deep learning in real-time interactive character animation industry?
  // 3. How can these deep learning methods be incorporated into the modern game development pipeline?
]

#title_section[Research Significance]
#content_section[#lorem(50)]

#title_section[Proposed System Overview]
#content_section[#lorem(50)]

#title_section[Conclusion]
#content_section[#lorem(30)]

#set par(first-line-indent: 0pt)

// ======================================
// Bibliography start
// ======================================

#title_section[References]
#bibliography("citation.bib", title: none, full: true, style: "apa")
