function branch_workday
    set branch_from "workday-develop-3.0"
    set branch_to "workday-develop-3.2"
    echo $argv[1]
    git clone ssh://git@bitbucket.workday.com:7999/dssst/$argv[1].git
    cd $argv[1]
    if git rev-parse --verify $branch_from 2>/dev/null
       if git rev-parse --verify $branch_to 2>/dev/null
           echo "Already done"
        else
            git checkout $branch_from
            git checkout -B $branch_to
            echo "PUSHING!"
            git push origin $branch_to
        end
    else
        echo "No workday-develop-3.0 branch, skipping"
    end

    cd ..
    rm -fr $argv
end
