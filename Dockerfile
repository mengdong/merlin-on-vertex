FROM gcr.io/deeplearning-platform-release/base-cu110

WORKDIR /nvtabular

RUN conda install -c nvidia -c rapidsai -c numba -c conda-forge pynvml dask-cuda nvtabular=0.5.3  cudatoolkit=11.0

ENV LD_LIBRARY_PATH /usr/local/cuda/lib:/usr/local/cuda/lib64:/usr/local/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/local/nvidia/lib:/usr/local/nvidia/lib64
                    