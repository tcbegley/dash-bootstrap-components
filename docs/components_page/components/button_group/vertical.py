import dash_bootstrap_components as dbc

vertical_button_group = dbc.ButtonGroup(
    [
        dbc.Button("First"),
        dbc.Button("Second"),
        dbc.DropdownMenu(
            [dbc.DropdownMenuItem("Item 1"), dbc.DropdownMenuItem("Item 2")],
            label="Dropdown",
            group=True,
        ),
    ],
    vertical=True,
)
