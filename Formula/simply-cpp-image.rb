class SimplyCppImage < Formula
    desc "C++20 wrapper around OpenCV for loading, saving, and processing images"
    homepage "https://github.com/roelofrossouw/simply-cpp-image"
    url "https://github.com/roelofrossouw/simply-cpp-image/archive/refs/tags/v1.0.12.tar.gz"
    sha256 "7e07638d040f4dfcd71da1246c321217fafdf98540e201c20368c36eec3dc249"
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
