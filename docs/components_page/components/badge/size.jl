using DashBootstrapComponents, DashHtmlComponents

varying_size_badges = html_div([
    html_h1(["Example heading", dbc_badge("New", className="ml-1")]),
    html_h2(["Example heading", dbc_badge("New", className="ml-1")]),
    html_h3(["Example heading", dbc_badge("New", className="ml-1")]),
    html_h4(["Example heading", dbc_badge("New", className="ml-1")]),
    html_h5(["Example heading", dbc_badge("New", className="ml-1")]),
    html_h6(["Example heading", dbc_badge("New", className="ml-1")]),
]);
