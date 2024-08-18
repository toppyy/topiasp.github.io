FROM ubuntu AS build
RUN apt update && apt install -y unzip
ADD https://www.prince-webdesign.nl/images/downloads/mvs-tk5.zip ./
RUN unzip mvs-tk5.zip
RUN mkdir ./tk5 && mv mvs-tk5/* ./tk5
WORKDIR /tk5/
COPY sleeper.sh ./
CMD unattended/set_console_mode

FROM ubuntu
WORKDIR /tk5/
COPY --from=build /tk5/ .
RUN chmod +x ./mvs ./mvs_ipl ./hercules/linux/64/bin/hercules

#ENTRYPOINT ["/bin/sh", "./sleeper.sh"]
ENTRYPOINT ["./mvs_ipl"]
