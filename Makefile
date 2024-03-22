CUDACXX=nvcc
CUDACXXFLAGS=-arch=sm_70 -O3
CXXFLAGS=-march=native -fopenmp

all: baseline

function_name: code_file_name.cu
	$(CUDACXX) $(CUDACXXFLAGS) -Xcompiler="$(CXXFLAGS)" code_file_name.cu -o baseline

clean:
	rm -f baseline
