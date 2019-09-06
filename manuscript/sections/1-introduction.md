# Introduction

Digital ecosystems are a growing source of innovation, where capabilities shift
from within an organization to third-party developers [@Parker2017; @Yoo2013;
@Yoo2010a], which has led to an increasing research interest on the phenomenon
of platform-based software ecosystems [@Jacobides2018]. The success of open
source software [OSS; @Lerner2002] and the trend away from monolithic to
platform-based software systems [@Hanseth2010] have created large-scale software
ecosystems, which we refer to as _platform-based open source software ecosystems
(POSSE)_. In this context, a platform is defined as “the extensible codebase of
a software-based system that provides core functionality shared by the modules
that interoperate with it and the interfaces through which they interoperate”
[@Tiwana2010b]. Accordingly, the platform and its entirety of complementary
modules form the platform’s ecosystem [@Tiwana2010b]. Hence, POSSE are digital
ecosystems consisting of digital artifacts [@Kallinikos2013] that are OSS
modules [@Eck2016]. These modules interact with the digital ecosystem’s platform
core through standardized interfaces and add functionality or value to the
digital platform [@Tiwana2010b; @deReuver2018]. This modular architecture of
POSSE allows for the coordination of heterogeneous developers that contribute
interdependent modules through an ecosystem [@Jacobides2018] in which
interoperability with the platform core is ensured through the usage of the
platform’s interfaces [@Tiwana2015]. Developers make use of existing modules
through a process of recombination and remixing when building new modules, which
they then contribute to the ecosystem. By doing so, two distinct types of
networks emerge. First, this process generates a _technical network of modules
and their interdependencies_, which are connected due to technical dependencies
between modules in the ecosystem [@MacCormack2006]. Second, developers form a
_social network of actors and their relationships_ by contributing their skill
and time [@Roberts2006] when creating new modules or adding code to existing
modules of the ecosystem. In doing so, they might add new technical dependencies
to existing modules, which affects the network of interdependencies, or form new
social structures by creating new collaborations or forming teams [@Hahn2008].
Due to this, we view POSSE as socio-technical systems comprised of the social
network of the participating developers and the technical network of
interdependencies of its complementary modules.

Previous research on the evolution of platform-based ecosystems has investigated
module interdependencies and their effect on platform evolution, which showed
that novel functionality relies on the introduction of new dependencies
[@Hukal2017], and that the ecosystem coevolves with its modules [@Um2016]. These
findings are closely related to studies that show how OSS is constructed and
evolves through layering, whereby future development activities can build up on
the current layer [@Howison2014]. However, current studies investigating the
evolution and success of platform-based ecosystems mainly focus on the technical
side of the ecosystem, even though the technology alone does not lead to
innovation in such complex networks, which depend on diverse groups of actors
with access to this technology and using it in innovative ways [@Boland2007]. In
the context of OSS, for example, voluntary software developers form project
teams that emerge based on the developers’ social networks [@Hahn2008]. The
success of POSSE therefore is not only related to its technology, but also to
“the project production process and the broader social environment in which
developers work” [@Singh2011, 814].

Despite the importance of both social and technical interactions, the direction
and consequence of changes (e.g., symbiosis and coevolution of modules, or
knowledge exchange amongst developers) of social networks (i.e., social
interactions of contributors) or technical networks (i.e., technical
interdependencies of modules) in POSSE have yet to be uncovered. An enhanced
understanding of the relationship between the technical and social networks, and
how they influence each other’s structure, could explain the dynamics of
ecosystem evolution and growth. This goes along with recent calls for rethinking
the nature of socio-technical systems in information systems research,
especially due to “novel arrangements emerging in the digital age” [@Winter2014,
264], including phenomena such as digital platforms and OSS. For example, the
aspect of complex forms of socio-technical encapsulation and overlapping systems
or platforms is seen as a central aspect of contemporary socio-technical systems
[@Winter2014]. Accordingly, we ask:

> “How do socio-technical dynamics in platform-based open source software
> ecosystems influence the ecosystems' growth and evolution?”

To answer our research question, we propose to conduct a study of three of the
most popular front-end development frameworks (i.e., Angular, React, and Vue)
and their respective POSSEs. In doing so, we respond to calls for data-driven
approaches to investigate ecosystem dynamics [@deReuver2018]. We aim to analyze
both the technical and social networks of those ecosystems with digital trace
data [@Berente2019] gathered from the projects’ GitHub and npm repositories. For
our analysis, we will primarily use network analysis techniques (i.e., cluster,
temporal, and network motif analyses). This will help to uncover the underlying
socio-technical dynamics leading to the evolution and growth of the digital
ecosystems.

These findings will contribute to theory and practice in two important ways.
First, we propose and develop a socio-technical approach for analyzing
evolutionary dynamics in POSSE. Second, we will advance our understanding of the
growth and success of POSSE and identify important predictors. Having insight
into how social and technical networks (i.e., collaborators and dependencies)
are interconnected, reveals interdependencies and enables conclusions on who
drives which aspects in the development and ultimately the evolution of POSSE.
Combined, this research therefore benefits both research and practice related to
POSSE and digital platform ecosystems in general.

The remainder of this paper is organized as follows. First, we define and
explain the concept of POSSE and the social and technical interdependencies in
open source projects in general and in POSSE in particular. Second, the proposed
research design is introduced including the description of our data collection
and analysis. Third, we present our expected results as well as our roadmap
until ICIS 2019. Fourth, we conclude with a discussion about potential
challenges, risks, and our expected contributions.
