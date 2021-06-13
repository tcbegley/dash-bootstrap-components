using DashBootstrapComponents, DashHtmlComponents

popover_children = [
    dbc_popoverheader("Popover header"),
    dbc_popoverbody("And here's some amazing content. Cool!"),
];

popovers = html_div([
    dbc_button(
        "Click",
        id="click-target",
        color="danger",
        className="mr-1",
        n_clicks=0,
    ),
    dbc_popover(popover_children, id="click", target="click-target", trigger="click"),
    dbc_button(
        "Focus",
        id="focus-target",
        color="danger",
        className="mr-1",
        n_clicks=0,
    ),
    dbc_popover(popover_children, id="focus", target="focus-target", trigger="focus"),
    dbc_button(
        "Hover",
        id="hover-target",
        color="danger",
        className="mr-1",
        n_clicks=0,
    ),
    dbc_popover(popover_children, id="hover", target="hover-target", trigger="hover"),
    dbc_button("Legacy", id="legacy-target", color="danger", n_clicks=0),
    dbc_popover(
        popover_children,
        id="legacy",
        target="legacy-target",
        trigger="legacy",
    ),
]);
