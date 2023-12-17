// Global settings
#set page(paper: "a4")
#set par(first-line-indent: 36pt)
#set text(
  font: ("Times New Roman"),
  lang: "en",
  size: 12pt,
  fill: navy,
  fallback: false
)

// Helper functions
#let title_section(body) = {
  align(center)[
    === #body
  ]
  linebreak()
}

#let content_section(body) = {
  parbreak()
  body
  linebreak()
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

#content_section[*Keywords:* Animation, Deep Learning, Motion Matching]

#title_section[Introduction]
#content_section[
  /*
  1. Background/History
    - Skinning
    - Keyframes
    - State machine
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
  #lorem(40)
]

#title_section[Research Aims]
#content_section[
  - #lorem(10)
  - #lorem(8)
  - #lorem(12)
]

#title_section[Research Questions and Objectives]
#content_section[
  1. How does motion matching contribute to the enhancement of character animation in video games.\
  2: What?\
  3: Why?\
]

#title_section[Research Significance]
#content_section[#lorem(50)]

#title_section[Proposed System Overview]
#content_section[#lorem(50)]

#title_section[Conclusion]
#content_section[#lorem(30)]

#set par(first-line-indent: 0pt)

#pagebreak()
// ======================================
// Bibliography start
// ======================================

#title_section[References]
#bibliography("citation.bib", title: none, full: true, style: "apa")
