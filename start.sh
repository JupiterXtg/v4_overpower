if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DHANANJAY4532/v4_overpower.git /v4_overpower
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /v4_overpower
fi
cd /v4_overpower
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
