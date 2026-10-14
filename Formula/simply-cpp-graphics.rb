class SimplyCppGraphics < Formula
    desc "C++20 drawing interface: canvas, text and fonts, paths and SVG, for image and PDF engines"
    homepage "https://github.com/roelofrossouw/simply-cpp-graphics"
    url "https://github.com/roelofrossouw/simply-cpp-graphics/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "eb8d099f9b3071e948c6b417c3213320ba0a52607664a8fa0207290b55d49668"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "tinyxml2"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
