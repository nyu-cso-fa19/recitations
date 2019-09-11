echo 'Testing your test against a number of solutions'
echo '-----------------------------------------------'

hidden='.hidden'
test='/tmp/a.out'

gcc main.c test.c $hidden/correct.o -o /tmp/a.out

errors=0

if $test; then
    echo '    Good solution passed! [GOOD]'
else
    echo '    Good solution failed! [BAD]'
    ((errors++))
fi

for f in `ls $hidden/bad*`; do
    gcc main.c test.c $f -o /tmp/a.out
    if $test; then
        echo '    Bad solution passed!  [BAD]'
        ((errors++))
    else
        echo '    Bad solution failed!  [GOOD]'
    fi
done

echo '-----------------------------------------------'

if [ $errors -eq 0 ]; then
    echo 'Your tests are good!'
elif [ $errors -eq 1 ]; then
    echo 'Your tests made one mistake.'
else
    echo "Your tests made $errors mistakes."
fi
