define shorewall::tcrules(
    $source,
    $destination,
    $protocol = 'all',
    $ports,
    $client_ports = '',
    $order = '1'
){
    shorewall::entry { "tcrules.d/${order}-${title}":
        line => "# ${name}\n${order} ${source} ${destination} ${protocol} ${ports} ${client_ports}",
    }
}
