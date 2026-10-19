class SimplyCppGraphics < Formula
    desc "C++20 drawing interface: canvas, text and fonts, paths and SVG, for image and PDF engines"
    homepage "https://github.com/roelofrossouw/simply-cpp-graphics"
    url "https://github.com/roelofrossouw/simply-cpp-graphics/archive/refs/tags/v5.0.3.tar.gz"
    sha256 "2b40ca9d5a6eea38b188032d5227de2aac2d5ee6155aeeb3e25c1e9947dbfba2"
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
