if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DHANANJAY4532/autofilter_v4_overpower.git /autofilter_v4_overpower
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /autofilter_v4_overpower
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting DQ-The-File-Donor...."
python3 bot.py
