using DashBootstrapComponents

email_input = dbc_formgroup([
    dbc_label("Email", html_for="example-email"),
    dbc_input(type="email", id="example-email", placeholder="Enter email"),
    dbc_formtext("Are you on email? You simply have to be these days", color="secondary"),
]);

password_input = dbc_formgroup([
    dbc_label("Password", html_for="example-password"),
    dbc_input(type="password", id="example-password", placeholder="Enter password"),
    dbc_formtext("A password stops mean people taking your stuff", color="secondary"),
]);

form = dbc_form([email_input, password_input]);
