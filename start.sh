if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Agunivers7/moviebot.git /moviebot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria
fi
cd /moviebot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
