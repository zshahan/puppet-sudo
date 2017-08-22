define sudo::register(
  $content = '',
  $order = 20
) {

  include ::sudo

  concat::fragment{"sudo_fragment_${name}":
    target  => $sudo::rulesfile,
    content => $content,
    order   => $order,
  }
}
