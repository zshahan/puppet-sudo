define sudo::rule (
  $who,
  $commands = 'ALL',
  $servers = 'ALL',
  $comment = '',
  $runas = 'root',
  $nopass = false,
  $setenv = false,
) {

  sudo::register{"rule_${name}":
    content => template('sudo/rule.erb'),
    order   => 30,
  }
}
