whoamii
whoami
cat /etc/os-release
uptime
nproc
free -h
df -h/
df -h /
sudo dnf update -y
sudo dnf install -y git python3 python3-pip curl nano
sudo dnf install -y --allowerasing git python3 python3-pip curl nano
clear
git --version
python3 --version
curl --version | head -n 1
nano --version | head -n 1
git config --global user.name "91-shiraz"
git config --global user.email "sheerazshaikh965@gmail.com"
git config --global init.defaultBranch main
git config --global core.editor nano
git config --global pull.rebase false
ssh -T git@github.com
ssh-keygen -t ed25519 -C "sheerazshaikh965@gmail.com"
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
clear
cd ~
mkdir bootcamp-app & cd bootcamp-app
mkdir bootcamp-app && cd bootcamp-app
git init
echo "# Bootcamp App" > README.md
git add README.md
git commit -m "Initial Commit"
git remote add origin git@github.com:91-shiraz/bootcamp-app.git
git branch -M main
git push -u origin main
git remote add origin git@github.com:91-shiraz/bootcamp-app.git
git push -u origin main
mkdir -p app tests
touch app/__init__.py
cat << 'EOF' > .gitignore
cat << 'EOF' > .gitignorecat << 'EOF' > .gitignore
.venv/
__pycache__/
.pytest_cache/
*.pyc
EOF

cat << 'EOF' > .gitignore
.venv/
__pycache__/
.pytest_cache/
*.pyc
EOF

cat << 'EOF' > app/main.py
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from DevOps Bootcamp v1"

@app.route("/health")
def health():
    return "ok"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
EOF

cat << 'EOF' > tests/test_app.py
from app.main import app

def test_home():
    client = app.test_client()
    assert b"Hello" in client.get("/").data

def test_health():
    assert app.test_client().get("/health").data == b"ok"
EOF

cat << 'EOF' > requirements.txt
flask==3.0.3
pytest==8.3.2
gunicorn==22.0.0
EOF

python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python -m pytest -q
deactivate
git add .
git commit -m "Add Flask app and tests"
git push
git push -u origin main
git rm -r --cached .ssh
git reset --soft HEAD~1
ls
ls -a
nano .gitignore 
clear
git status
git add app tests requirements.txt .gitignore README.md
git commit -m "Add Flask app, Tests and Requirements"
git push -u orign main
git push -u origin main
clear
