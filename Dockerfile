# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

# Kernel we'll use
# See https://github.com/sagemath/sage/tree/develop/docker
FROM sagemath/sagemath:8.6

# we'll run this in Jupyter Lab
RUN sage -pip install jupyterlab

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
