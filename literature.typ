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

*_Abstract_--- Xxx*

*_Index Terms_*

Character Animation, Deep Learning, Neural Networks, Interactive, Real-time

= Literature Review

== Domain 1

== Domain 2

== Domain 3

== Similar system

= Methodology

== Target user

== Sampling method

== Data collection method

= Conclusion

Real-time interactive character animation contributes largely into the immersion of interactive applications such as games. Constructing such system that can react realistically and naturally to dynamic environments is extremely challenging without incorporating machine learning components. Thanks to the adoption of neural networks and the abundance of accelerated computing of GPUs in recent years, the animation industry has been able to benefit from it by harnessing the enormous learning capability of neural networks to revolutionize the interactive application industry.

#set par(first-line-indent: 0pt)

// ======================================
// Bibliography start
// ======================================

= References
#bibliography("citation.bib", title: none, full: true, style: "apa")
