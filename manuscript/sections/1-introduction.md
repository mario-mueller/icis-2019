# Introduction

The success of open source software [@Lerner2002] and the trend away from
monolithic to platform-based software systems [@Hanseth2010] have created
large-scale software ecosystems, which we refer to as _platform-based open
source software ecosystems_ (POSSE). POSSE are digital ecosystems consisting of
digital artifacts [@Kallinikos2013] that are open source software (OSS) modules
[@Eck2016]. These modules interact with the digital ecosystem's platform core
through standardized interfaces and add functionality or value to the digital
platform [@Tiwana2010b; @deReuver2018]. Hence, digital ecosystems are a growing
source of innovation, where capabilities shift from within an organization to
third-party developers [@Parker2017; @Yoo2013; @Yoo2010a], which has led to an
increasing research interest on the phenomenon of POSSE [@Jacobides2018].

In those ecosystems, developers make use of existing modules through a process
of recombination and remixing when building modules, which they then contribute
to the POSSE. Out of this process, two interconnected networks arise: (1) a
hierarchy of _technical dependencies_ from one module to the next
[@MacCormack2006], and (2) a social network of _actors_, contributing their
skill and time to multiple modules [@Roberts2006]. As developers as actors form
relationships and contribute to different modules and thereby transfer
knowledge, they might introduce new technical dependencies, therefore coupling
the social and technical networks. Similarly, as new technical dependencies are
introduced to a module, developer networks might change as well -- for instance
by reporting bugs or seeking help. Studies have investigated the dynamics of
changes of technical dependencies over time and whether or not to upgrade a
dependency [@Bavota2013]. Similarly, social aspects such as relations among
developers have been investigated as well, for example, with regard to the
effects of prior collaboration [@Hahn2008] or how open source software teams are
structured [@Crowston2006].

While some studies have shown that the technical architecture can influence
participation in projects [e.g., @Baldwin2006; @MacCormack2006], the direction
and consequence of changes of social or technical networks in POSSE have yet to
be uncovered. This understanding of the relationship between the technical and
social layers, and how they influence each other's structure, could explain the
growth of those ecosystems and form critical success factors of POSSE.
Accordingly, we ask:

> "_How do social networks and technical dependencies interact in platform-based
> open source software ecosystems?_"

To answer our research question, we propose to conduct a study of three of the
most popular frontend development frameworks (i.e., Angular, React, and Vue) and
their respective digital ecosystems. In doing so, we aim to analyze both the
technical and social networks of those ecosystems with digital trace data
[@Berente2019] gathered from the projects' GitHub and npm repositories. For our
analysis, we will primarily use network analysis techniques (i.e., cluster,
temporal, and network motif analyses). The aim of our study is to uncover the
underlying patterns and structures covering the social and technical perspective
of POSSE.

These findings contribute to theory and practices by, first, proposing a
socio-technical approach for analyzing POSSE, combining both the technical and
social layer. Second, we advance our understanding of the growth and success of
POSSE and identify important predictors. Combined, this research therefore
benefits both research and practice related to POSSE and digital platform
ecosystems in general.

The remainder of this paper is organized as follows: First, we summarize related
work on open source software ecosystems and the influence of social and
technical networks on the success of open source projects in general. Second,
the proposed research design is introduced including the description of our data
collection and analysis. Third, we present our expected results as well as our
roadmap until ICIS 2019. Fourth, we conclude with a discussion about potential
challenges, risks, and our expected contributions.
