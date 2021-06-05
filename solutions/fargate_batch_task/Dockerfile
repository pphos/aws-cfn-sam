FROM public.ecr.aws/amazonlinux/amazonlinux:2

# Install packages
RUN yum -y update && yum -y install \
  curl \
  unzip \
  git


# Amazon Linux2 のインストール
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN rm -rf aws awscliv2.zip

# 実行スクリプトのコピー
COPY function.sh /root/home/function.sh
RUN chmod +x /root/home/function.sh

CMD /root/home/function.sh
