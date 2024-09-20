# refer to official docs if having issues
# https://mise.jdx.dev/getting-started.html#_3-adding-tools-to-mise

# check if already installed
if ~/.local/bin/mise ls | grep php && ! ~/.local/bin/mise ls php | grep missing > /dev/null; then
    echo "PHP already installed"
    return;
fi

echo "PHP not installed. Installing PHP... You might need to install dependencies first. See here https://gist.github.com/azumafuji/9db65fba3342ea8ac0551d420de650d2"

sudo apt-get update && sudo apt-get install -y autoconf \
    bison \
    build-essential \
    curl \
    gettext \
    libcurl4-openssl-dev \
    libedit-dev \
    libicu-dev \
    libjpeg-dev \
    libmysqlclient-dev \
    libonig-dev \
    libpng-dev \
    libpq-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    libxml2-dev \
    libzip-dev \
    openssl \
    pkg-config \
    re2c \
    zlib1g-dev \
    libgd-dev

~/.local/bin/mise install -y php@8.3.1
~/.local/bin/mise use --global php@8.3.1

echo "`php -v`"

echo "PHP installed successfully."