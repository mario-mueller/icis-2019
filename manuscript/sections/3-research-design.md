# Preliminary Research Design

## Research Method & Case Description

For this research project, we adopt a data-driven computational approach for
theory development, following the recommendations for grounded theory
methodology (Berente et al. 2019) and guidelines for qualitative research with
digital trace data (Lindberg 2019). Here, we refer to digital trace data as
“digital records of activities and events that involve information technologies”
(Berente et al. 2019, p. 51).

The cases are sampled following a theoretical sampling strategy. Looking for
similar and established POSSE, we identified three suitable cases: (1) Angular
(https://angular.io/), (2) React (https://reactjs.org/), (3) and Vue
(https://vuejs.org/). All cases are currently among the most popular
front-end-frameworks for web- or web-app-development (Stack Overflow 2019).
Further, they are suitable as all three ecosystems share similarities: they are
written in JavaScript or derivatives (i.e., TypeScript) and aim at providing a
basis for web- or app-development. While their respective implementations might
differ, the ecosystems also remain similar due to their shared intent (i.e.,
front-end frameworks). Table 1 provides an overview of all three cases.

´´´table ´´´

## Data Collection

To collect data on our three cases, we utilize two main data sources: GitHub
(https://github.com), which all three cases use as source code repository, and
npm (https://npmjs.com), which all three cases use as release management and
distribution tool. If needed, we can extend our data collection to GH Archive
(https://gharchive.org/), a publicly available data repository, recording and
archiving timeline data from the GitHub API. However, as both GitHub and npm
provide public access to their data via an API, we will prioritize a
first-hand-access.

From GitHub, we are able to collect detailed information about the collaborators
and the commits made for both the central framework (i.e., core) and for each
module. Further, we are able to collect data on the lines of code (additions and
deletions) for every commit and who committed these lines of code to the core or
module as well as comments made by contributors or other users.

From npm, we are able to collect detailed information about the releases of
every ecosystem – both for the core and for each published module. Included in
these details is a list of dependencies that a core or module has on other
packages within npm. Further, we are also able to get information on the
download counts – again for the core and each published module – for each single
day.

To identify modules for each of the three cases, we utilize the search API
offered by npm. Via a keyword search on the ecosystem’s name, we are able to
identify every publicly available module for each of the ecosystems. While
modules for Angular and React are tagged with “angular” and “react”
respectively, modules for vue are tagged “vue”, “vue.js”, or “vuejs”. Including
the variants, we are able to identify all needed modules.

Combining the data from GitHub and npm, we are able to aggregate measures, such
as the number of modules available in an ecosystem, the lines of code affected
by a release, the lines of code per contributor per release, or the lines of
code per download per day – giving us a wide range of measures for contribution
to and growth and success of open-source platform-based ecosystems (cf. Lindberg
forthcoming). Including temporal data (e.g., quarterly downloads from npm), we
are able to calculate a “velocity” of a core or module, further extending our
options for later data analysis.

## Data Analysis

In a first step, based on the collected data on the social relationships as well
as the technical dependencies of the modules, we are going to generate directed
graphs for general network analyses and further cluster, temporal, and network
motifs analyses. By adopting a network perspective on the social and technical
relationships in the ecosystem, first we will calculate general network measures
(i.e., degrees, centralities, modularity; Wasserman and Faust 1994), followed by
cluster analysis for both the social and technical network.

The main goal, especially of the cluster analysis, is to identify cliques of
social actors (i.e., developers) and groups of technical dependencies between
modules inside the networks, which we will later use for comparison. For our
cluster analysis, we will use the Density-Based Spatial Clustering of
Applications with Noise (DBSCAN) algorithm introduced by Ester et al. (1996). We
choose a density-based over a centroid-based clustering, which identifies
clusters of arbitrary shape and accounts for outliers in the data, hence, no a
priori specification of the number of clusters is necessary (Vaast et al. 2017).

In addition, we aim to conduct a temporal analysis of the whole network and its
clusters to identify changes over time and potential key events that lead to
those changes in the networks. In doing so, we can analyze the patterns that led
to the evolution and growth of the ecosystems and are able to identify effects
on micro and macro levels (cf. Lindberg 2019).

Furthermore, we plan on conducting a motif analysis with both networks. A motif
analysis identifies “recurring, significant patterns of interconnections” (Milo
et al. 2002, p. 824). Thus, a network motif can be described as a repeating
sub-graph in a network or across networks. By detecting network motifs, we aim
to identify patterns that might hint at underlying relations between the modules
(technical layer) and/or the developers (social layer) not accounted for in the
cluster analysis. For motif analysis, we plan to use the implementation of
Wernicke (2006)’s RAND-ESU algorithm of the Python library graph-tools
(https://graph-tool.skewed.de/).

All these measures will then be used as predictors for our currently main
independent variable: growth of the ecosystem. In this specific context, we
define growth as a combination of three indicators: First, we will utilize the
number of downloads – for the ecosystem’s core and associated modules – as an
indicator for popularity. Second, we will include the number of collaborators
for the ecosystem’s core as an indicator for the growth of the core team (e.g.,
Setia et al. 2012). Third, we will use the number of lines of code added or
deleted as an indicator for growth regarding the code base. Utilizing this
multi-indicator approach enables us to observe an ecosystem’s growth on multiple
dimensions (cf. Lindberg 2019). With the help of correlation analysis or
regression analysis, we plan then on demonstrating which of the above mentioned
measures regarding social or technical networks predicts growth of an ecosystem.
Especially by including a temporal dimension, we are able to identify cause and
effect more clearly (cf. Lindberg 2019).
