# Expected Results

Due to the exploratory nature of this study, we remain open to different results
and different explanations [cf. @Lindberg2019]. However, based on existing work,
we have some prior assumptions of what we expect to see. First, we expect the
developers’ social networks to affect the technical network of the ecosystem. We
expect this to occur because developers bring their own technical experience and
knowledge into the projects they are working on, which includes integrating
modules they have used before in other projects. This means that if developers
collaborate on different modules together, they might use the same dependencies
across multiple modules. Hence, these choices made by one actor might create
trajectories for the remaining actors [@Boland2007].

> Proposition 1: The technical dependencies of a module are influenced by the
> social relations of participating actors.

Second, we also expect technical network to have an effect on the social
network. For instance, developers using a particular module might seek help from
its developer, report a bug, or request additional functionality. This
connection might lead to new social relations in the future. For example, both
actors might collaborate on new modules, merge their existing modules due to
similar functionalities, or form new clusters of actors.

> Proposition 2: The social relations of participating actors are influenced by
> the technical dependencies of contributed modules.

Third, based on the shown interdependent relationship between social actors and
technical dependencies, we expect to see a cyclical interaction between both
networks.

> Proposition 3: The technical dependencies of a module and the social relations
> of associated actors form a cyclical interaction over time.

Fourth, we expect the growth of the social network to correlate with the growth
of the technical network, as a higher number of available modules increases the
attractiveness of the ecosystem for developers [@Parker2017]. This is because
more modules might increase reuse and the chance to find a suitable module for a
problem at hand.

> Proposition 4: The growth of the social and technical networks are correlated.

Fifth, even though the modules themselves are independent from the codebase of
the platform core, they use functionality provided by other modules, which
results in a dependency on the module it draws functionality from. Therefore,
the introduction of a new module might lead to a new cluster of modules that are
enabled by the newly provided functionality. This goes in line with recent
studies that show that OSS is constructed and evolves through layers of changes
on which future development activities can build on [@Howison2014]. According to
this theory of superposition, a software layer only uses “what is already there”
[@Howison2014, 34]. We believe that a similar mechanism is also observable in
POSSE and explains its evolution.

> Proposition 5: The introduction of novel functionality provided by additional
> modules enables ecosystem evolution and generates module clusters depending on
> the additional modules.
