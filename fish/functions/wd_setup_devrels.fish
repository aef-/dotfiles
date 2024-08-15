function setup_devrels 
    set riak_vsn 3.0
    set rebar3_vsn 22

    set workday_path $HOME/Dev/workday/riak
    set riak_path $workday_path/riak
    set devrel_path $workday_path/devrels/workday-develop-$riak_vsn/dev

    for i in {1..8}; do $riak_path/rel/gen_dev dev$i rel/vars/dev_vars.config.src rel/vars/$i_vars.config; end
    for i in (seq 1 8); $workday_path/../rebar3-$rebar3_vsn/rebar3 as stagedev release -o dev/dev{$i} --overlay_vars rel/vars/{$i}_vars.config; end
    rm -rf $devrel_path
    cp -p -P -R $riak_path/dev $devrel_path
    cd $devrel_path && git commit -a -m "wd_setup_devrels"
    echo "Done"
end
