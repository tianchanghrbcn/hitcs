from pathlib import Path


# SECURITY WARNING: don't run with debug turned on in production!

DEBUG = True


# Database
# https://docs.djangoproject.com/en/3.2/ref/settings/#databases

BASE_DIR = Path(__file__).resolve().parent.parent
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'HOST': 'localhost',  # 本地MySQL
        'PORT': '3306',       # 默认MySQL端口
        'USER': 'root',       # 修改为你的MySQL用户名
        'PASSWORD': 'ITHhtc725901',   # 修改为你的MySQL密码
        'NAME': 'erp_db',
        'OPTIONS': {'charset': 'utf8mb4'},
    }
} 