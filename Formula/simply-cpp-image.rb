class SimplyCppImage < Formula
    desc "C++20 wrapper around OpenCV for loading, saving, and processing images"
    homepage "https://github.com/roelofrossouw/simply-cpp-image"
    url "https://github.com/roelofrossouw/simply-cpp-image/archive/refs/tags/v5.5.0.tar.gz"
    sha256 "3723c8c4e9eef7434ba16a45b0992cc3ffd2097990e37c7ca0f00363110a6685"
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
