if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vasubai/super-octo-guacamole.git /super-octo-guacamole
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /super-octo-guacamole
fi
cd /super-octo-guacamole
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
