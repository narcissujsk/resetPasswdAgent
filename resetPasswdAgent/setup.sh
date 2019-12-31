CUR_DIR=`pwd`

#!/bin/sh
install()
{
echo "begin install ResetPwdAgent"
echo "===============cp ResetPwdAgent======================"

cp -rf $CUR_DIR/resetPwdAgent  /opt/

echo "===============begin install ResetPwdAgent==================="
cd /opt/resetPwdAgent/bin
chmod +x resetPwdAgent
./resetPwdAgent install
./resetPwdAgent start
cd -

if [ $? -eq 0 ]; then
        echo "cloudResetPwdAgent install successfully."
            return 0
    else
        echo "cloudResetPwdAgent install failed."
        return 1
    fi
}
install || { exit 1; }
exit 0
