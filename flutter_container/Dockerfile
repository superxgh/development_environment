FROM ubuntu:18.04

# Prerequisites
RUN apt update && apt install -y curl git unzip xz-utils zip libglu1-mesa  default-jdk wget sudo

# Setup new user
# RUN echo 'root:Docker!' | chpasswd
# RUN useradd -ms /bin/bash developer
# RUN echo 'developer:developer' | chpasswd
# USER developer
# WORKDIR /home

# # Prepare Android directories and system variables
# RUN mkdir -p Android/sdk
# ENV ANDROID_SDK_ROOT /home/Android/sdk
# RUN mkdir -p .android && touch .android/repositories.cfg

# # Setup Android SDK
# RUN wget -O sdk-tools.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
# RUN unzip sdk-tools.zip && rm sdk-tools.zip
# RUN mv tools Android/sdk/tools
# RUN cd /home/Android/sdk/tools/bin && yes | ./sdkmanager --licenses
# RUN cd /home/Android/sdk/tools/bin && ./sdkmanager "build-tools;29.0.2" "patcher;v4" "platform-tools" "platforms;android-29" "sources;android-29"
# ENV PATH "$PATH:/home/Android/sdk/platform-tools"

# # # Download Flutter SDK
# RUN cd /home
# # # RUN rm -rf flutter
# RUN git clone https://github.com/flutter/flutter.git
# # # RUN wget -O flutter.zip https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.0.4-stable.zip
# # RUN unzip flutter.zip
# RUN cd /home/flutter &&  git checkout 3.0.4
# ENV PATH "$PATH:/home/flutter/bin"
# RUN cd

# # # Run basic check to download Dark SDK
# RUN flutter doctor

# # # Set Android toolchain
# RUN cd /home/Android/sdk/tools/bin && yes | ./sdkmanager --install "cmdline-tools;latest"
# # RUN flutter doctor --android-licenses

EXPOSE 3000