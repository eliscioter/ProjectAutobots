import os
from dotenv import load_dotenv

load_dotenv()

zycus_login_url = os.environ.get("LOGIN_URL")

user1_email = os.environ.get("USER1EMAIL")
user1_password = os.environ.get("USER1PASS")

user2_email = os.environ.get("USER2EMAIL")
user2_password = os.environ.get("USER2PASS")

user3_email = os.environ.get("USER3EMAIL")
user3_password = os.environ.get("USER3PASS")
