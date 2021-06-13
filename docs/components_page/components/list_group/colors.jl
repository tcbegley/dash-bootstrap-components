using DashBootstrapComponents

list_group = dbc_listgroup([
    dbc_listgroupitem("The primary item", color="primary"),
    dbc_listgroupitem("A secondary item", color="secondary"),
    dbc_listgroupitem("A successful item", color="success"),
    dbc_listgroupitem("A warning item", color="warning"),
    dbc_listgroupitem("A dangerous item", color="danger"),
    dbc_listgroupitem("An informative item", color="info"),
]);
