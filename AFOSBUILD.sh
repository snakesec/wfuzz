rm -rf /opt/ANDRAX/wfuzz

PIPX_HOME=/opt/ANDRAX/pipx PIPX_BIN_DIR=/opt/ANDRAX/pipx/bin PIPX_MAN_DIR=/opt/ANDRAX/pipx/man /opt/ANDRAX/python3.13/bin/pipx install --force .

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Force install local... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf andraxbin/* /opt/ANDRAX/bin
