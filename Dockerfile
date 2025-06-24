FROM ubuntu:22.04

# 安装基础依赖
RUN apt-get update && \
    apt-get install -y zsh curl sudo git build-essential locales && \
    locale-gen en_US.UTF-8

# 创建普通用户，避免用root测试
RUN useradd -ms /bin/zsh devuser && echo "devuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER devuser
WORKDIR /home/devuser

# 运行时挂载本地脚本目录
CMD ["zsh"] 