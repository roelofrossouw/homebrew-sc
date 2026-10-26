class SimplyCppImage < Formula
    desc "C++20 wrapper around OpenCV for loading, saving, and processing images"
    homepage "https://github.com/roelofrossouw/simply-cpp-image"
    url "https://github.com/roelofrossouw/simply-cpp-image/archive/refs/tags/v5.4.2.tar.gz"
    sha256 "5c8056d1f92a256ebf0dfab3a71bb3ba3c79c84f780a757068b5720acd5a379e"
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
