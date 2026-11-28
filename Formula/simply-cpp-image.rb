class SimplyCppImage < Formula
    desc "C++20 wrapper around OpenCV for loading, saving, and processing images"
    homepage "https://github.com/roelofrossouw/simply-cpp-image"
    url "https://github.com/roelofrossouw/simply-cpp-image/archive/refs/tags/v7.1.0.tar.gz"
    sha256 "02d0bab2c943da2bdf902ce71137fcedfeec5dad05b81f3d576eb1973f347a07"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-geometry"
    depends_on "simply-cpp-graphics"
    depends_on "giflib"
    depends_on "opencv"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_IMAGE_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
