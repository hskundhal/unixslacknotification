res=`psql --host=vi-db08.prod.tor.tpstk.ca -U kafkaconsumer -d vilogs -c "select count(*) as cnt, 'twohubcomparision10' from twohubcomparision10
union all
 select count(*) as cnt, 'twohubcomparisionde' from twohubcomparisiondetail;" -t`
./s $1 "$res"
