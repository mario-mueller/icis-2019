# Introduction

Digital ecosystems as a growing source of innovation where capabilities shift to
the outside of the organization to external contributors (i.e., third-party
developers) [@Parker2017; @Yoo2013; @Yoo2010a], which led to a growth in
interest in the concept of ecosystems [@Jacobides2018]. Digital ecosystem as
socio-technical systems. Applied to open source ecosystems, they do not only
consist of the developed software and the dependencies between them, but also on
the social communities of third-party developers contributing their time and
skill to increase the value of the ecosystem by participating in it through the
contribution of complements. From the social perspective, we know xxx. From the
technical perspective, we know xxx. However, we lack an understanding of the
relationship between the two and how they influence each other’s structure.
Accordingly, we ask:

> “How do social networks influence the technical dependencies in platform-based
> open source software ecosystems?”

To anwer our research question, xxx. These findings contribute to theory and
practices, as ... The remainder of this paper, xxx “We define a digital
ecosystem as a collection of digital artifacts that co-evolve through mutual
interference, and the social actors related to these artifacts that are linked
by a common interest (Eck and Uebernickel 2016; Selander et al. 2013).”
[@Eck2016].

- Contribution to the ecosystem
- Contribution to open source projects
  - “About 65% of professional developers on Stack Overflow contribute to open
    source projects once a year or more. Involvement in open source varies with
    language. Developers who work with Rust, WebAssembly, and Elixir contribute
    to open source at the highest rates, while developers who work with VBA, C#,
    and SQL do so at about half those rates.”
    (https://insights.stackoverflow.com/survey/2019)
- Connection between ecosystem and open source → Platform-based open source
  ecosystems
- Coordination problem in OS. Platforms reduce coordination, hence perfect match
  for open source, ergo more and more open source projects build around a
  platform
  - Coordination problem in OS. Platforms reduce coordination, hence perfect
    match for open source, ergo more and more open source projects build around
    a platform
  - Coordination as a major issue in open source development due to
    heterogeneous actors participating in the development process
- Previous research, xxx
- Gap!
- Eck and Uebernickel (2016) argue for the identification of ecosystems based on
  dependencies rather than social relationships
- We propose a socio-technical approach for analyzing platform-based open source
  software ecosystems (POSSE) combining both the technical and social
  relationships

# Related Work

## Mobile Platforms and Ecosystems

The technological advances have fueled an increasing infusion of digital
capabilities into products, which leads to new functionalities, products, and
use cases (Yoo et al. 2010). Those digitized products can concurrently function
as products and platforms, thus becoming digital product platforms (Yoo et al.
2010). For example, with the digitization of the mobile phone, Apple created a
new mobile platform around its iPhone and the related App Store through the
separation of the software and hardware layer, which enables the
reprogrammability of the product (Yoo et al. 2010). From a software perspective,
mobile platforms are commonly defined as “software-based systems that provide
functionality to support the development of mobile applications and transactions
among multiple sets of actors” (Ye and Kankanhalli 2018, p. 166). However, this
definition falls short in accounting for the hardware layer of mobile platforms.
Hence, in the context of this paper, we adopt the definition of Teece (2018) and
define mobile platforms as “any combination of hardware and software that
provides standards, interfaces, and rules that enable and allow providers of
complements to add value and interact with each other and/or users” (p. 1375).

From an architectural perspective, mobile platforms are enabled by an underlying
modular architecture that divides the system into a set of stable components
with low variety (i.e., the platform core) and a set of peripheral components
with high variety (i.e., complements), which are connected via standardized
interfaces (Baldwin and Woodard 2009). This architecture allows third-party
actors to provide software (e.g., apps) and hardware complements (e.g., screen)
to the platform core, thereby increasing the value of the platform for its
users. Those technical complements together with the involved stakeholder, such
as the platform owner, third-party application developers and hardware
providers, as well as the users, constitute the mobile platform ecosystem (Qiu
et al. 2017).

One focus of the research stream on mobile platform ecosystems is the
governanceorganizing mechanisms between the platform owner and the third-party
providers (Jacobides et al. 2018). However, the focus of these studies has been
on the software layer of mobile platforms focusing on providers of complementary
software complements. For example, xxx. Hence, hardware perspective missing and
needed, xxx

Concluding, xxx

## Platform Governance

Since the IBM PC and later with the introduction of Apple’s App Store for the
iPhone mobile platform, organizations have adopted a strategy of allowing
third-party actors to contribute complements to the platform’s ecosystem
(Boudreau 2012). Thus, organizations aim to attract heterogeneous actors to
design and produce novel components on layers outside of its digital product
platform (Yoo et al. 2010). Once the platform owner opens the platform to
third-party complements, the platform’s ecosystem has to be carefully governed,
balancing between maintaining control and granting autonomy to foster innovation
(Tiwana et al. 2010; Wareham et al. 2014). Hence, platform governance can
loosely be defined as “who makes what decisions about a platform” (Tiwana et al.
2010, p. 679).

On the software layer, the platform owner designs boundary resources to govern
the relationship with third-party application developers (Ghazawneh and
Henfridsson 2013; Eaton et al. 2015), which can be of technical (e.g., SDKs,
APIs) or social nature (e.g., documentations, guidelines) (Bianco et al. 2014).
xxx

Our key departure lies in the observation that platform owners also exercise
governance mechanisms on the hardware layer of the mobile platform. For example,
xxx. Yet, the literature has not yet accounted for these types of governance
mechanisms on the hardware layer, nor examined how the mechanisms on the
software and hardware layer might interact. Instead, so far the hardware layer
has been conceptualized as part of a “stable core“ under the centralized control
of the platform owner and remains untouched by third-parties (xxx). In what
follows, we report on our ongoing empirical study of a case setting where this
assumption, and view, are being challenged.

# Research Design

## Research Method & Case Description

For this research project, we adopt a data-driven computational approach for
theory development following the grounded theory methodology [@Berente2019]. We
will conduct a multiple case study [@Yin2003], as our research question is
largely exploratory and aims at closing a gap in the current state of knowledge
on open source platform-based ecosystems. The cases were sampled following a
theoretical sampling strategy. Looking for similar and established open-source
platform-based ecosystems, we identified three suitable cases: (1) Angular
(https://angular.io/), (2) React (https://reactjs.org/), (3) and Vue
(https://vuejs.org/). All cases are currently among the most popular
front-end-frameworks for web- or web-app-development (Stack Overflow 2019).
Further, they are suitable as all three ecosystems share similarities: they are
written in JavaScript or derivatives (i.e., TypeScript) and aim at providing a
basis for web- or app-development. While their respective implementations might
differ, the ecosystems also remain similar due to their shared intent. Table 1
provides an overview of all three ecosystems.

```{.table file="https://docs.google.com/spreadsheets/d/e/2PACX-1vQrJ70zxeSEP32qRYyoIyiwmMVUu3mu-XwGhpZprxWAvWNyOqcFhjEqVk2xoLPr7N1ibmttJ260nbYn/pub?gid=0&single=true&output=csv" delimiter="," header="yes" align="LCCC" inlinemarkdown="yes" caption="Overview of Cases" width="0.25 0.25 0.25 0.25"}

```

## Data Collection

To collect data on our three cases, we utilize two main data sources: GitHub,
which all three cases use as source code repository, and npm, which all three
cases use as release management and distribution tool. If need be, we can extend
our data collection to GH Archive (https://gharchive.org/), a publicly available
data repository from the GitHub API. However, as both GitHub and npm provide
public access to their data via an API, we will prioritize a first-hand-access.
From npm we are able to collect detailed information about the releases of every
ecosystem – both for the central framework and for each published module.
Included in these details is a list of dependencies that a framework or plugin
as on other packages within npm. Further, we are also able to get information on
the download counts – again for the central framework and each published module
– for each single day. To identify modules for each of the three cases, we
utilize the search API from npm. Via a keyword search on the ecosystem’s name,
we are able to identify every publicly available module for each of the
ecosystems. While modules for Angular and React are tagged with “angular” and
“react” respectively, modules for vue are tagged “vue”, “vue.js”, or “vuejs”.
Including the variants, we are able to identify all needed modules for data
collection. From GitHub we are able to collect detailed information about the
collaborators and the commits made for both the central framework and each
module. Further, we are able to collect data on the lines of code (additions and
deletions) for every commit and who committed these lines of code to the
framework or module. Combining the data from GitHub and npm, we are able to
aggregate measures, such as the number of modules available in an ecosystem, the
lines of code affected by a release, the lines of code per contributor per
release, or the lines of code per download per day – giving us a wide range of
measures for contribution to and growth and success of open-source
platform-based ecosystems. Including temporal data (e.g., quarterly downloads
from npm), we are able to calculate a “velocity” of a framework or plugin,
further extending our options for later data analysis.

## Data Analysis

In a first step, based on the collected data on the social relationships as well
as the technical dependencies of the modules, we are going to generate directed
graphs for general network analysis and further cluster, temporal, and network
motifs analyses. By adopting a network perspective on the social and technical
relationships in the ecosystem, we will first calculate general network measures
(i.e., degrees, centralities) (Wasserman and Faust 1994), followed by cluster
analysis for both the social and technical network. The main goal, especially of
the cluster analysis, is to identify cliques of social actors (i.e., developer)
and dependency groups of technical artifacts (i.e., modules) inside the
networks, which we will later use for comparison. “DBSCAN was useful to us
because it allows the discovery of nonlinear clusters of uneven sizes. DBSCAN is
also robust to noise and outliers, and does not require the specification of the
desired number of clusters a priori.” (Vaast et al. 2017) In addition, we will
calculate the modularity of the network, which is definition. Since modularity
is one of the main characteristics of a platform ecosystem, comparing the social
and technical network based on that measure seems promising. In doing so, we
hope to identify socio-technical relationships of the ecosystem. Furthermore, we
plan on conducting a motif analysis with both networks. A motif analysis does
what. Thereby, we aim to identify xxx.

- Motif analysis
  - Vaast, E., Safadi, H., Lapointe, L., and Negoita, B. 2017. “Social Media
    Affordances for Connective Action: An Examination of Microblogging Use
    During the Gulf of Mexico Oil Spill,” MIS Quarterly (41:4), pp. 1179–1205.
    (https://doi.org/10.25300/MISQ/2017/41.4.08).

Phil:

- Measures:
  - Growth / Size → “degree of participation of peripheral developers (NoOfPerD)
    is the primary independent variable used in this research, and it is a
    monthly count of the peripheral developers working on each project” (Setia
    et al. 2012)
  - Downloads / Popularity
  - Lines of Code
- Correlation Analysis (ANOVA? T-tests; but compare what with what?)

# Expected Results

Answering our research question as stated above, we expect social networks,
derived from the collaboration networks of frameworks and plugins, to have an
effect on technical networks, derived from the dependencies of plugins within
frameworks. In detail, we expect to see that if collaboration networks are of
less modularity, dependency networks are as well. We expect this to occur, as
developers bring their own technical experience and knowledge into the projects
they are working on – including modules they have used before. This means, that
if developers collaborate on different modules together, they might use the same
dependencies across multiple modules. Further, we expect number of modules to
correlate with download numbers, as a higher number of available modules might
increase the value of an ecosystem for developers, as more modules might
increase reuse and the chance to find a suitable module for a problem at hand.
However, due to the explorative nature of this study, we remain open to
different results and different explanations.

# Future Plan

Until the International Conference on Information Systems in December 2019, we
plan to accomplish multiple further steps towards our final goal. First, we plan
to have completed data collection (i.e., have collected all data from GitHub and
npm for all three cases). This step includes cross referencing data across
GitHub and npm (e.g., releases from npm and commits included in this commit from
GitHub). As the data crawler has already been written, we expect this step to be
completed around July of 2019. Second, we plan to create an internal research
memo on initial observations from the collected data. This step is important to
have a clearer understanding of the structure of the data and to prepare for
detailed quantitative analysis. We expect this step to be completed by October
of 2019. Third, we plan on conducting a detailed quantitative analysis before
December of 2019, which contents have been laid out in the previous section.
Lastly, if time permits, we hope to have derived preliminary implications for
research and practice based on the detailed quantitative data analysis.

# Discussion

## Risks and Challenges

Regarding risks and challenges for the described research project, we identified
three main areas: technical challenges, analytical challenges, and challenges
for contribution. First, as we have a completed the programming of a data
crawler, we only see one technical challenge. As GitHub is throttling and
limiting requests to their API, we cannot download all the data we need in a
single request or as fast as our internet connection would allow. While this
might be annoying, it is not a threat to the research project – it clearly
delays the completion date of this research project, but does not threaten the
success in general. Second, and related to the first challenge, we expect the
collected data set to be large – both in terms of rows, due to the amount of
releases and commits, and in terms of size (i.e., gigabytes), due to the
included textual descriptors. The size of the data set is a challenge as it is
more difficult to handle during analysis. However, as only limited manual
analysis is needed (see section “Data Analysis”) and as computational resources
are available to us, we do not expect the size of the dataset to threaten the
success of this research project. Similar to the previous challenge, we—at
worst—only expect a delay. Third, we see challenges for our contribution.
Without a qualitative analysis, meaning has to be derived by application of
extant theories. We cannot rely on context-giving clues as can be done with
qualitative approaches. Depending on our findings—for instance, if we cannot
explain a finding—we might only be able to report some findings, without
providing reasons or explanations.

## Expected Contribution

- Having insight into how they are interconnected reveals interdependencies and
  enables conclusions on who drives which aspects in OSS.
- By knowing who contributes to which project and by knowing which project uses
  which dependencies, correlations between contributors and dependencies can be
  drawn. This might enable us to explain, why some OSS projects are more
  successfull/more advanced/growing faster (?) than others by comining the
  results from Step 1, 2, and 3 with measures such as number of commits,
  releases, total issues, stars, followers, ...

# Conclusion

<!-- TODO -->

# References

\tolerance=1 \emergencystretch=\maxdimen \hyphenpenalty=10000 \hbadness=10000

\setlength\parindent{-0.63cm} \setlength\parskip{0cm}
\setlength\leftskip{0.63cm} \noindent
