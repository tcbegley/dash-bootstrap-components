
using Dash, DashBootstrapComponents

app = dash(external_stylesheets=[dbc_themes.BOOTSTRAP]);

using DashBootstrapComponents, DashHtmlComponents

text_input_0 = html_div([
    dbc_input(id="input", placeholder="Type something...", type="text"),
    html_br(),
    html_p(id="output"),
]);

callback!(app, Output("output", "children"), Input("input", "value")) do value
    return value
end;

using DashBootstrapComponents, DashHtmlComponents

number_input_1 = html_div(
    [
        html_p("Type a number outside the range 0-10"),
        dbc_input(type="number", min=0, max=10, step=1),
    ],
    id="styled-numeric-input",
);

using DashBootstrapComponents

text_input_2 = dbc_formgroup([
    dbc_label("Text"),
    dbc_input(placeholder="Input goes here...", type="text"),
    dbc_formtext("Type something in the box above"),
]);

using DashBootstrapComponents, DashHtmlComponents

inputs_3 = html_div([
    dbc_input(placeholder="A large input...", bs_size="lg", className="mb-3"),
    dbc_input(placeholder="A medium input...", bs_size="md", className="mb-3"),
    dbc_input(placeholder="A small input...", bs_size="sm"),
]);

using DashBootstrapComponents, DashHtmlComponents

inputs_4 = html_div([
    dbc_input(placeholder="Valid input...", valid=true, className="mb-3"),
    dbc_input(placeholder="Invalid input...", invalid=true),
]);

using DashBootstrapComponents, DashHtmlComponents

textareas_5 = html_div([
    dbc_textarea(className="mb-3", placeholder="A Textarea"),
    dbc_textarea(
        valid=true,
        bs_size="sm",
        className="mb-3",
        placeholder="A small, valid Textarea",
    ),
    dbc_textarea(invalid=true, bs_size="lg", placeholder="A large, invalid Textarea"),
]);

using DashBootstrapComponents

select_6 = dbc_select(
    id="select",
    options=[
        Dict("label" => "Option 1", "value" => "1"),
        Dict("label" => "Option 2", "value" => "2"),
        Dict("label" => "Disabled option", "value" => "3", "disabled" => true),
    ],
);

using DashBootstrapComponents, DashHtmlComponents

radioitems = dbc_formgroup([
    dbc_label("Choose one"),
    dbc_radioitems(
        options=[
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
            Dict("label" => "Disabled Option", "value" => 3, "disabled" => true),
        ],
        value=1,
        id="radioitems-input",
    ),
]);

checklist = dbc_formgroup([
    dbc_label("Choose a bunch"),
    dbc_checklist(
        options=[
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
            Dict("label" => "Disabled Option", "value" => 3, "disabled" => true),
        ],
        value=[1],
        id="checklist-input",
    ),
]);

switches = dbc_formgroup([
    dbc_label("Toggle a bunch"),
    dbc_checklist(
        options=[
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
            Dict("label" => "Disabled Option", "value" => 3, "disabled" => true),
        ],
        value=[1],
        id="switches-input",
        switch=true,
    ),
]);

inputs_7 = html_div([
    dbc_form([radioitems, checklist, switches]),
    html_p(id="radioitems-checklist-output"),
]);


callback!(
    app,
    Output("radioitems-checklist-output", "children"),
    Input("radioitems-input", "value"),
    Input("checklist-input", "value"),
    Input("switches-input", "value"),
) do radio_items_value, checklist_value, switches_value

    n_checkboxes = length(checklist_value)
    n_switches = length(switches_value)

    output_string =
        """Radio button $radio_items_value, $n_checkboxes """ *
        """checklist item$(n_checkboxes != 1 ? "s" : "") and $n_switches """ *
        """switch$(n_switches != 1 ? "es" : "") selected."""

    return output_string
end;

using DashBootstrapComponents

inline_radioitems = dbc_formgroup([
    dbc_label("Choose one"),
    dbc_radioitems(
        options=[
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
        ],
        value=1,
        id="radioitems-inline-input",
        inline=true,
    ),
]);

inline_checklist = dbc_formgroup([
    dbc_label("Choose a bunch"),
    dbc_checklist(
        options=[
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
        ],
        value=[],
        id="checklist-inline-input",
        inline=true,
    ),
]);

inline_switches = dbc_formgroup([
    dbc_label("Toggle a bunch"),
    dbc_checklist(
        options=[
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
        ],
        value=[],
        id="switches-inline-input",
        inline=true,
        switch=true,
    ),
]);

inline_inputs_8 = dbc_form([inline_radioitems, inline_checklist, inline_switches]);

using DashBootstrapComponents

checklist_9 = dbc_checklist(
    id="checklist-selected-style",
    options=[
        Dict("label" => "Option 1", "value" => 1),
        Dict("label" => "Option 2", "value" => 2),
        Dict("label" => "Option 3", "value" => 3),
    ],
    labelCheckedStyle=Dict("color" => "red"),
);

using DashBootstrapComponents, DashHtmlComponents

standalone_radio_check_10 = html_div([
    dbc_formgroup(
        [
            dbc_checkbox(id="standalone-checkbox", className="form-check-input"),
            dbc_label(
                "This is a checkbox",
                html_for="standalone-checkbox",
                className="form-check-label",
            ),
        ],
        check=true,
    ),
    dbc_formgroup(
        [
            dbc_radiobutton(id="standalone-radio", className="form-check-input"),
            dbc_label(
                "This is a radio button",
                html_for="standalone-radio",
                className="form-check-label",
            ),
        ],
        check=true,
    ),
    html_br(),
    html_p(id="standalone-radio-check-output"),
]);


callback!(
    app,
    Output("standalone-radio-check-output", "children"),
    Input("standalone-checkbox", "checked"),
    Input("standalone-radio", "checked"),
) do checkbox_checked, radio_checked
    if checkbox_checked == 1 && radio_checked == 1
        return "Both checked."
    elseif checkbox_checked == 1 || radio_checked == 1
        return "One checked."
    else
        return "None checked."
    end
end;


app.layout = html_div([text_input_0, number_input_1, text_input_2, inputs_3, inputs_4, textareas_5, select_6, inputs_7, inline_inputs_8, checklist_9, standalone_radio_check_10]);
run_server(app, "127.0.0.1", 8053);
