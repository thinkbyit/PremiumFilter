if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/jugnucode/PremiumFilter.git /PremiumFilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PremiumFilter
fi
cd /PremiumFilter
pip3 install -U -r requirements.txt
echo "Starting PremiumFilter...."
python3 bot.py
