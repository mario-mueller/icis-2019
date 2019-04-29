# Introduction

The success of open source software [@Lerner2002] and the trend away from
monolithic to platform-based software systems [@Hanseth2010] have created
large-scale software ecosystems, which we refer to as _platform-based open
source software ecosystems_ (POSSE). POSSE are digital ecosystems consisting of
digital artifacts [@Kallinikos2013] that are open source software modules
[@Eck2016]. These modules interact with the digital ecosystem's central platform
through standardized interfaces and add additional functionality or value to the
digital platform [@Tiwana2010b; @deReuver2018]. Hence, digital ecosystems are
seen as a growing source of innovation, where capabilities shift from within an
organization to third-party developers [@Parker2017; @Yoo2013; @Yoo2010a], which
has led to an increasing research interest on the phenomenon of digital
ecosystems [@Jacobides2018].

In those ecosystems, developers make use of existing modules through a process
of recombination and remixing when building additional modules, which they then
contribute to the POSSE. Out of this process, two interconnected networks arise:
(1) a hierarchy of technical dependencies from one module to the next
[@MacCormack2006], and (2) a social network of actors, contributing their skill
and time to multiple modules [@Roberts2006]. As developers as actors form
relationships and contribute to different modules and therefore transfer
knowledge, they might introduce new technical dependencies, therefore coupling
the social and technical networks. Similarly, as new technical dependencies are
introduced to a module, developer networks might change as well -- for instance
by reporting bugs or seeking help. Studies have investigated the dynamics of
changes of technical dependencies over time and whether or not to upgrade a
dependency [@Bavota2013]. Similarly, social aspects such as relations among
developers have been investigated as well, for example, with regard to the
effects of prior collaboration [@Hahn2008] or how open source software teams are
structured [@Crowston2006]. While some studies have shown that the technical
architecture can influence participation in projects [e.g., @Baldwin2006;
@MacCormack2006], the direction and consequence of changes of social or
technical networks in POSSE have yet to be uncovered. This understanding of the
relationship between the technical and social layers, and how they influence
each other's structure could explain the growth of those ecosystems and form
critical success factors of POSSE. Accordingly, we ask:

> _"How do social networks and technical dependencies interact in platform-based
> open source software ecosystems?"_

To answer our research question, we propose to conduct a study of three of the
most popular frontend development frameworks (i.e., Angular, React, and Vue) and
their respective digital ecosystems. In doing so, we aim to analyze both the
technical and social networks of those ecosystems with data gathered from the
projects' GitHub and npm repositories. For our analysis, we will primarily use
network analysis techniques (i.e., cluster, temporal, and network motif
analyses). The aim of our study is to uncover the underlying patterns and
structures covering the social and technical perspective of POSSE.

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

# Theoretical Background

## Platform-based Open Source Software Ecosystems

Popular open source software (OSS), such as the Linux kernel or Node, are
platform-based, which means that they evolve around a _digital platform_ that is
the "extensible codebase of a software-based system that provides core
functionality shared by the modules that interoperate with it and the interfaces
through which they interoperate" [@Tiwana2010b, 675]. When the platform
orchestrator opens the digital platform for external developers, it transitions
to a _software ecosystem_ [@Bosch2009; @Messerschmitt2003]. In software
ecosystems, third-party developers contribute their time, knowledge, and skill
to increase the value of the ecosystem by participating in it through the
contribution of modules [@Roberts2006], which are "add-on software subsystem
that connect to the platform to add functionality to the platform"
[@Tiwana2010b, 676]. In this scenario, the platform functions as a hub with the
complementary modules as spokes connected through application programming
interfaces (APIs) or other technical standards [@Jacobides2018]. Accordingly, we
define _platform-based open source software ecosystems_ (POSSE) as "a collection
of digital artifacts \[i.e., modules\] that co-evolve through mutual
interference, and the social actors related to these artifacts that are linked
by a common interest" [@Eck2016].

By enabling contributions by external actors, digital ecosystems are seen as a
growing source of innovation where capabilities shift to the outside of the
organization [@Parker2017; @Yoo2013; @Yoo2010a]. The modular architecture allows
for the coordination of heterogeneous third-party developers that contribute
interdependent modules through an ecosystem [@Jacobides2018], removing
third-party developers from the underlying code and enabling contributions
without full information about the functionality of the software behind the
interface. This opens up POSSE for contributions from a wide range of developers
and therefore raises the importance of understanding the interdependencies of
social and technical layers involved.

## Social and Technical Interdependencies in Open Source Projects

OSS projects rely heavily on the communities surrounding these projects --
without the contributions of time and effort of highly motivated developers, OSS
projects cannot exist [@Roberts2006]. In general, the success of the open source
model has led to an increase in OSS projects and new ideas on how innovation
should be managed [@Singh2011]. OSS projects do not always produce software
targeted at end users, but at developers and this software is "designed to be
reused and to provide functionality to other software projects" [@Haefliger2008,
180]. @Boland2007 make the point that technology (e.g., software) per se does
not herald innovation in complex networks. Rather, diverse groups of actors with
access to the technology are those putting their capabilities to innovative
uses. In the context of OSS, voluntary software developers form project teams
that emerge based on the developers' social networks [@Hahn2008]. The success of
OSS projects therefore is not only related to technical characteristics, but
also to "the project production process and the broader social environment in
which developers work" [@Singh2011, 814]. OSS projects can therefore be seen as
socio-technical systems.

As a special type of OSS, POSSE are archetypical socio-technical systems as well
and contain both technical and social aspects. From a technical perspective, the
digital ecosystem of a platform consists of the platform itself and
complementary applications build by third-party developers [@Cusumano2002;
@Tiwana2013]. From a social perspective, the platform, its orchestrator, and all
the complementary software modules and their creators form the platform's
ecosystem [@Jacobides2018]. Hence, POSSE do not only consist of the platform
core, its interfaces, and related modules, but also include those third-party
developers that contribute to the software ecosystem and thereby generate
additional value for the platform and its users through increasing usage of the
platform and its complementary software [@Gawer2008].

Originating in biology, the term of a habitat is closely linked to ecosystems
and has been defined as the area in which a community (in this case a group of
individuals from various species) lives. We adopt this term to define the areas
of the POSSE that are made up from technical and social relationships between
the individual third-party developers and the respective modules. Thereby, we
aim to uncover communities, their habitats, and their effect on the underlying
structure and growth of POSSE.

To sum up, POSSE are the intersection of effects relating to digital platforms,
ecosystems, and OSS. This intersection, combined with the effects emerging from
the intertwined relationship of social and technical aspects, are uncharted
territory. Due to the popularity and success of OSS---and especially
POSSE---this combination of forces is a worthwhile area for research.

# References

\tolerance=1 \emergencystretch=\maxdimen \hyphenpenalty=10000 \hbadness=10000

\setlength\parindent{-0.63cm} \setlength\parskip{0cm}
\setlength\leftskip{0.63cm} \noindent
