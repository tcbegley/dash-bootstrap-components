using DashBootstrapComponents, DashHtmlComponents

layout_group_cards = dbc_cardgroup([
    dbc_card(
        dbc_cardbody([
            html_h5("Card 1", className="card-title"),
            html_p(
                "This card has some text content, which is a little " *
                "bit longer than the second card.",
                className="card-text",
            ),
            dbc_button("Click here", color="success", className="mt-auto"),
        ]),
    ),
    dbc_card(
        dbc_cardbody([
            html_h5("Card 2", className="card-title"),
            html_p("This card has some text content.", className="card-text"),
            dbc_button("Click here", color="warning", className="mt-auto"),
        ]),
    ),
    dbc_card(
        dbc_cardbody([
            html_h5("Card 3", className="card-title"),
            html_p(
                "This card has some text content, which is longer " *
                "than both of the other two cards, in order to " *
                "demonstrate the equal height property of cards in a " *
                "card group.",
                className="card-text",
            ),
            dbc_button("Click here", color="danger", className="mt-auto"),
        ]),
    ),
]);
