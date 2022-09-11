 #!/bin/bash

for (( ; ; ))
do
sleep 40

echo $(rm -rf ~/.local/share/Trash/files/*)
echo $(rm -rf ~/.local/share/Trash/info/*)
done

