function pg_start
  pg_ctl -D /usr/local/var/postgres start
end

function pg_stop
  pg_ctl -D /usr/local/var/postgres stop
end

function pg_reset
  pg_ctl -D /usr/local/var/postgres stop
  rm -rf /usr/local/var/postgres/
  initdb /usr/local/var/postgres/
  pg_ctl -D /usr/local/var/postgres start
end