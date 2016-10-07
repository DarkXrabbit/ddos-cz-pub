cp ${TYPE}.o ${TYPE}.$$.o
while : ; do
    ${TBIN} --in ${TYPE}.$$.o --out ${DEV} --num $NUM --cpp --gap $GAP --cpus $CPUS 1>/dev/null || break
    [ $(date +%s) -lt $STOPTIME ] || break
done
rm -f ${TYPE}.$$.o
