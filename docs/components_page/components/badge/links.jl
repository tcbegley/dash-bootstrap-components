using DashBootstrapComponents, DashHtmlComponents

linked_badges = html_span([
    dbc_badge("Primary", href="#", color="primary", className="mr-1"),
    dbc_badge("Secondary", href="#", color="secondary", className="mr-1"),
    dbc_badge("Success", href="#", color="success", className="mr-1"),
    dbc_badge("Warning", href="#", color="warning", className="mr-1"),
    dbc_badge("Danger", href="#", color="danger", className="mr-1"),
    dbc_badge("Info", href="#", color="info", className="mr-1"),
    dbc_badge("Light", href="#", color="light", className="mr-1"),
    dbc_badge("Dark", href="#", color="dark"),
]);
