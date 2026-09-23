class SimplyCppImage < Formula
    desc "C++20 wrapper around OpenCV for loading, saving, and processing images"
    homepage "https://github.com/roelofrossouw/simply-cpp-image"
    url "https://github.com/roelofrossouw/simply-cpp-image/archive/refs/tags/v1.0.5.tar.gz"
    sha256 "d0b2d3bb4eefc5d92f8e8d79bc149ccf010d80558116c40a0b400beaa3f75d4d"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "lunasvg"
    depends_on "opencv"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
