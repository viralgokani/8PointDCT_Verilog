#Motivation
Discrete Cosine Transform (DCT) is one of the important image compression algorithms used in image processing applications. It involves a lot of multiplications, additions and also has a huge memory requirement. Several algorithms have been proposed over the last couple of decades to reduce the number of computations and memory requirements involved in the DCT computation algorithm. Any algorithm that can reduce the total number of additions, multiplications or memory requirement would be of profound significance to the image processing domain.

#The Discrete Cosine Transform
A discrete cosine transform (DCT) expresses a sequence of finitely many data points in terms of a sum of cosine functions oscillating at different frequencies i.e. it transforms a signal from a spatial representation into a frequency representation. In an image, most of the energy will be concentrated in the lower frequencies, so if we transform an image into its frequency components and discard the higher frequency coefficients, we can reduce the amount of data needed to describe the image without sacrificing too much image quality. This is why DCT is popularly used in several image compression algorithms. The DCT function used in image processing consists of sum of weighted cosine functions at different frequencies. 

#Algorithm
There are lots of different DCT algorithms. Like the DFT, DCTs have a recursive structure that allows them to be implemented in O (N log N) operations, instead of the O (N2) operations a full matrix-vector multiply would take. Unlike the FFT, which decomposes into nothing but smaller FFTs except for some multiplications by scalars - twiddle factors plus a permutation, the recursive factorizations of one DCT type will usually contain other trigonometric transforms – both smaller DCTs and smaller DST (discrete sine transforms) of varying types.

The first important dedicated DCT algorithm is presented in [1], which provides a DCT factorization for any power-of-2 N which is substantially faster than computing the DCT using a larger FFT. Over a decade later, [3] describes a family of minimum-complexity solutions for N=8 derived using graph transforms, a separate algorithm that has no more than one multiply along any path, and a then-new fast algorithm for N=16. [2] introduces a scaled algorithm for N=8 which greatly reduces the number of multiplications. A scaled DCT is one where the output coefficients have non-uniform scaling factors; compression applications normally follow up the DCT with a quantization stage and precede the IDCT with a dequantization stage. The scale factors can be folded into the quantization / dequantization steps, which makes them effectively free. 

For 1D DCTs and N=8, the situation hasn’t substantially changed. Larger DCTs (16 and up) have seen some improvement on their arithmetic operation costs in recent years [4] [5], with algorithms derived symbolically from split-radix FFTs.

##Building blocks
Independent of the choice of DCT algorithm, they all break down into the following 3 basic components:
•	Butterflies. A butterfly is the transform (a , b) → (a + b, a - b). A butterfly is also its own inverse, up to a scale factor of two, since (a + b) + (a – b) = 2a and likewise  (a + b) + (a – b) = 2b.
•	Planar rotations. Take a pair of values, interpret them as coordinates in the plane, and rotate them about the origin. The inverse of a rotation by θ radians is a rotation by -θ radians. There is also planar reflections which are closely related to rotations and work out pretty much the same on the implementation side. Reflections are self-inverse, and in a butterfly is just a reflection scaled by √2.
•	Scalar multiplies. Map “a → ca” for some nonzero constant c. The inverse is scaling by 1/c.


#REFERENCES

[1] Chen, Wen-Hsiung, C. H. Smith, and Sam Fralick. “A fast computational algorithm for the discrete cosine transform.” Communications, IEEE Transactions on 25.9 (1977): 1004-1009

[2] Yukihiro, Arai, Agui Takeshi, and Masayuki Nakajima. “A fast DCT-SQ scheme for images.” IEICE TRANSACTIONS (1976-1990) 71.11 (1988): 1095-1097.

[3] Loeffler, Christoph, Adriaan Ligtenberg, and George S. Moschytz. “Practical fast 1-D DCT algorithms with 11 multiplications.” Acoustics, Speech, and Signal Processing, 1989. ICASSP-89., 1989 International Conference on. IEEE, 1989.

[4] Plonka, Gerhard, and Manfred Tasche. “Split-radix algorithms for discrete trigonometric transforms.” (2002).

[5] Johnson, Steven G., and Matteo Frigo. “A modified split-radix FFT with fewer arithmetic operations.” Signal Processing, IEEE Transactions on 55.1 (2007): 111-119. 


