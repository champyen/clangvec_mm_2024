CC=clang -O3
ARM_CC=/opt/android-ndk-r26b/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android34-clang -O3

all: mm mm_vec_sse mm_vec_avx mm_vec_avx512 mm_omp mm_vec_omp arm_mm arm_mm_vec arm_mm_omp arm_mm_vec_omp

arm_mm: mm.c
	$(ARM_CC) -o arm_mm mm.c

arm_mm_vec: mm.c
	$(ARM_CC) --save-temps -o arm_mm_vec mm.c -DENABLE_VEC

arm_mm_omp: mm.c
	$(ARM_CC) --save-temps -o arm_mm_omp mm.c -fopenmp

arm_mm_vec_omp: mm.c
	$(ARM_CC) --save-temps -o arm_mm_vec_omp mm.c -DENABLE_VEC -fopenmp

mm: mm.c
	$(CC) -o mm mm.c

mm_vec_sse: mm.c
	$(CC) -msse4 -o mm_vec_sse mm.c -DENABLE_VEC

mm_vec_avx: mm.c
	$(CC) -mavx2 -o mm_vec_avx mm.c -DENABLE_VEC

mm_vec_avx512: mm.c
	$(CC) -mavx512f -o mm_vec_avx512 mm.c -DENABLE_VEC

mm_omp: mm.c
	$(CC) -o mm_omp mm.c -fopenmp

mm_vec_omp: mm.c
	$(CC) -mavx512f -o mm_vec_omp mm.c -DENABLE_VEC -fopenmp

clean:
	rm -f mm mm_vec_* mm_omp mm_vec_omp arm_mm*
