FROM wordpress:6.0-php8.1-apache

RUN set -ex; \
    cp /etc/apt/sources.list /etc/apt/sources.list.bak; \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye main contrib non-free" > /etc/apt/sources.list; \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-updates main contrib non-free" >> /etc/apt/sources.list; \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian-security bullseye-security main contrib non-free" >> /etc/apt/sources.list; \
    apt-get update; \
    apt-get install -y curl less; \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
    chmod +x wp-cli.phar; \
    mv wp-cli.phar /usr/local/bin/wp; \
    wp --info --allow-root; \
    rm -rf /var/lib/apt/lists/*

# RUN set -ex; \
#     echo "Installing WordPress plugins..."; \
#     wp plugin install download-monitor --version=4.4.4 --activate --allow-root; \
#     wp plugin install wp-user-frontend --version=3.5.25 --activate --allow-root; \
#     wp plugin install sliced-invoices --version=3.8.2 --activate --allow-root; \
#     wp plugin install photo-gallery --version=1.5.34 --activate --allow-root; \
#     wp plugin install ultimate-maps-by-supsystic --version=1.1.12 --activate --allow-root; \
#     wp plugin install wp-statistics --version=13.0.7 --activate --allow-root; \
#     wp plugin install joomsport-sports-league-results-management --activate --allow-root; \
#     echo "All plugins installed."