FROM python:3.11
RUN mkdir /usr/local/share/ca-certificates/russian_trusted
RUN apt-get update && apt install wget -y
RUN wget  https://gu-st.ru/content/lending/russian_trusted_root_ca_pem.crt -P /usr/local/share/ca-certificates/russian_trusted
RUN wget  https://gu-st.ru/content/lending/russian_trusted_sub_ca_pem.crt  -P /usr/local/share/ca-certificates/russian_trusted
RUN update-ca-certificates
ENV SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
RUN pip install pandas \
    requests \
    ytsaurus-yson ytsaurus-client \
    lxml \
    xmlschema \
    requests \
    xmltodict


    git branch -m main master
git fetch origin
git branch -u origin/master master
git remote set-head origin -a