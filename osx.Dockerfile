# Use the base image
FROM sickcodes/docker-osx:ventura

# Set environment variables
ENV DISPLAY=${DISPLAY:-:0.0}
ENV GENERATE_UNIQUE=true
ENV MASTER_PLIST_URL='https://raw.githubusercontent.com/sickcodes/osx-serial-generator/master/config-custom.plist'

# Expose the necessary port
EXPOSE 10022

# Set the entrypoint command
CMD ["bash"]
