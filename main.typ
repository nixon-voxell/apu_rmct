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
// Content starts
// ======================================

// Cover page
#align(horizon + center)[
  = Exploring Deep Learning Approaches for Dynamic Real-time Animation
  #linebreak()
  Cheng Yi Heng

  Asia Pacific University

  CT098-3-2-RMCT: Research Methods for Computing and Technology

  Assoc. Prof. Ts. Dr. Tan Chin Ike

  #datetime.today().display("[month repr:long] [day], [year]")
]

#pagebreak()
// Content page start

#title_section[Abstract]
#content_section[
  Neural networks has proven to be capable of solving a wide variety of complex tasks. This leads to the natural evolution of the animation industry to utilize the enormous learning capabilities of neural networks for generating dynamic animation in real-time. In this article, we will take a look at a variety of deep learning approaches towards dynamic real-time animation. We systematically evaluate the efficacy of these methods by considering their strengths, limitations, and novel contributions, as well as performing a comparison based on their evaluation results.
// TODO: Conclusion
]

#content_section[*Keywords:* Animation, Neural Networks, Motion Matching]

#title_section[Introduction]
#content_section[
  #lorem(80)
]

#title_section[Problem Statement]
#content_section[#lorem(40)]

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
// Bibliography start

#title_section[References]
#bibliography("citation.bib", title: none, full: true, style: "apa")
