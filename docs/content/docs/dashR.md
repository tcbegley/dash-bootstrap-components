---
title: Dash for R
---

# Dash for R

You can now use _dash-bootstrap-components_ with Dash for R! Note that support for Dash for R is still in beta so proceed with caution. If you try it out and run into issues, please [let us know](https://github.com/facultyai/dash-bootstrap-components/issues/new?template=bug.md)!

## Installation



## Basic usage

_dash-bootstrap-components_ is a component library for use with Plotly Dash. If you have not used Dash before, it's strongly recommended you check out [the Dash documentation][dash-docs] and try building a basic app first.

To use _dash-bootstrap-components_ you must do two things:

- Link a Bootstrap v4 compatible stylesheet
- Incorporate _dash-bootstrap-components_ into the layout of your app.

### Linking a stylesheet

_dash-bootstrap-components_ doesn't come with CSS included. This is to give you the freedom to use any Bootstrap v4 stylesheet of your choice. This means however that in order for the components to be styled properly, you must link to a stylesheet yourself.

For convenience, links to [BootstrapCDN][bootstrapcdn] for standard Bootstrap and each Bootswatch theme are available through the `dbcThemes` list, which can be used as follows:

```r
```

For more information on available themes see the [_themes documentation_][docs-themes]

### Build the layout

With CSS linked, you can start building you app's layout with out Bootstrap components. Currently there isn't documentation for the R components, but check out [_component documentation_][docs-components] for a full list of available components with Python documentation. The R components work the same way with the same arguments. You can also try running this minimal example to get started.

```r

```

[dash-docs]: https://dashr.plotly.com/
[docs-themes]: /docs/themes
[docs-components]: /docs/components
[bootstrapcdn]: https://www.bootstrapcdn.com/
