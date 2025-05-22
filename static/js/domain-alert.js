var migrationAlertContainer = document.getElementById('domain-alert-container');

if (!window.localStorage.getItem('dbc-domain-alert-seen')) {
  migrationAlertContainer.setAttribute('style', 'display:block');
}

var migrationAlert = document.getElementById('domain-alert');
migrationAlert.addEventListener('closed.bs.alert', function () {
  window.localStorage.setItem('dbc-domain-alert-seen', 'true');
  migrationAlertContainer.setAttribute('style', 'display:none');
});
