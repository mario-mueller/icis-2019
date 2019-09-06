# Preliminary Research Design

## Research Method & Study Description

For this research project, we adopt a data-driven computational approach for
theory development, following the recommendations for grounded theory
methodology [@Berente2019] and guidelines for qualitative research with digital
trace data [@Lindberg2019]. Here, we define digital trace data as “digital
records of activities and events that involve information technologies”
[@Berente2019, 51].

We selected the three ecosystems by following a theoretical sampling strategy.
Looking for similar and established POSSE, we identified three suitable
ecosystems: (1) Angular[^1]\ (https://angular.io/), (2) React
(https://reactjs.org/), (3) and Vue (https://vuejs.org/). All ecosystems are
currently among the most popular front-end-frameworks for web- or
web-app-development [@StackOverflow2019]. Further, they are suitable as all
three ecosystems share similarities: they are written in JavaScript or
derivatives (i.e., TypeScript) and aim at providing a basis for web- or
app-development. While their respective implementations might differ, the
ecosystems also remain similar due to their shared intent (i.e., front-end
frameworks). Table 1 provides an overview of all three ecosystems.

[^1]:

  Note: Angular needs to be differentiated from AngularJS, as Angular has
  emerged from a complete rewrite of AngularJS.

// PUT TABLE 1 ABOUT HERE

## Data Collection

To collect data on our three ecosystems, we utilize two main data sources:
_GitHub_ (https://github.com), which all three cases use as source code
repository, and _npm_ (https://npmjs.com), which all three cases use as release
management and distribution tool. From GitHub, we are able to collect detailed
information about the collaborators, codebase, and development process for each
module. From npm, we are able to collect detailed information about the releases
related to the respective ecosystem. To identify modules for each of the three
ecosystems, we utilize the search API offered by the npm registry. We are able
to identify every publicly available module for each of the ecosystems by
searching for tags such as “angular”, “react”, and “vue”. Including variants, we
are thereby able to identify all needed modules. As of August 2019, we have
collected the data of 58,548 modules over all three ecosystems. Table 2 provides
an overview of the collected data from npm. Combining the data from GitHub and
npm, we are able to aggregate measures such as the number of modules available
in an ecosystem, the lines of code affected by a release, the lines of code per
contributor per release, or the lines of code per download per day, giving us a
wide range of additional measures to interpret and explain the evolution and
growth (cf. Lindberg 2019). Including temporal data (e.g., quarterly downloads),
we are able to set these measurements into context and investigate the
ecosystem’s evolution and growth over time.

// PUT TABLE 2 ABOUT HERE

## Data Analysis

In a first step, based on the collected data on the social relationships as well
as the technical dependencies of the modules, we are going to generate directed
graphs for the subsequent network analysis. In a first step, we will create two
separate networks for both the social and technical aspects of the ecosystems.
For the _social network_, we will construct an actor-actor network based on the
relationships of the ecosystem’s developers (i.e., shared contributions to
modules and/or other social links based on GitHub follows). For the _technical
network_, we will construct artefact-artefact networks representing the module
dependencies. In addition, to take the socio-technical aspect into account, we
will model the actor-artefact interconnections (i.e., the actor in the social
network is linked to its artefacts in the technical network). Table 3 describes
the operationalization of each edge type of the networks in line with our
conceptual framework (see Figure 1).

// PUT TABLE 3 ABOUT HERE

In line with our research question, the main goal of the network analysis is to
identify socio-technical dynamics in the ecosystems and explain the ecosystems’
evolution. To achieve this goal, we will apply multiple network analysis
techniques: (1) cluster analysis, (2) temporal analysis, and (3) motif analysis.
First, for our _cluster analysis_, we will use the _Density-Based Spatial
Clustering of Applications with Noise (DBSCAN)_ algorithm introduced by
@Ester1996, which identifies clusters of arbitrary shape and accounts for
outliers in the data, and does not need a priori specification of the number of
clusters. These clusters of actors or modules might provide insight into
underlying similarities and the clusters’ evolution over time (e.g., different
layers of modules or different use cases, such as middleware and front-end
modules). Second, the _temporal analysis_ of the networks and their clusters
allows us to identify changes over time and potential key events that lead to
changes in the networks. In doing so, we can analyze the patterns that led to
the evolution and growth of the ecosystems and are able to identify effects on
the micro (e.g., the movement of actors between and across modules) and the
macro (e.g., the distribution and growth of module clusters) level [cf.
@Lindberg2019]. Third, the _motif analysis_ identifies “recurring, significant
patterns of interconnections” [@Milo2002, 824]. Thus, a network motif can be
described as a repeating sub-graph in a network or across networks. By detecting
network motifs, we aim to identify patterns that might hint at underlying
dynamics between the modules (technical network) and/or the developers (social
network) not accounted for in the cluster analysis.

The results of the applied network analysis techniques will then be used to
derive explanations for the evolution and growth of the ecosystem. In this
specific context, we define growth as a combination of multiple indicators.
First, we will utilize the number of downloads per module as an indicator for
its popularity. Second, we will include the number of ecosystems actors (i.e.,
developers) as an indicator for the growth of the ecosystem [e.g., @Setia2012].
Utilizing this multi-indicator approach enables us to observe an ecosystem’s
growth on multiple dimensions [cf. @Lindberg2019]. Third, we analyze the rate at
which modules are added to the ecosystem, which not only is an indicator for its
growth, but also for the rate of innovation in the ecosystem [@Parker2017].
Fourth, to measure the evolution of a particular module, we will analyze the
rate at which it is upgraded [@Tiwana2015]. With the help of correlation
analysis or regression analysis, we plan then on demonstrating which of the
above mentioned measures regarding social or technical networks predicts growth.
Especially by including a temporal dimension, we are able to identify cause and
effect more clearly [cf. @Lindberg2019].
