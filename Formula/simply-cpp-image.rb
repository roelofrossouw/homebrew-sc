class SimplyCppImage < Formula
    desc "C++20 wrapper around OpenCV for loading, saving, and processing images"
    homepage "https://github.com/roelofrossouw/simply-cpp-image"
    url "https://github.com/roelofrossouw/simply-cpp-image/archive/refs/tags/v5.4.3.tar.gz"
    sha256 "01ec76213be4898094530c9799b8a2546d4fbd216b7c62a0d31a2d92c7f9b5b3"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-graphics"
    depends_on "opencv"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_IMAGE_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
