class SimplyCppGraphics < Formula
    desc "C++20 drawing interface: canvas, text and fonts, paths and SVG, for image and PDF engines"
    homepage "https://github.com/roelofrossouw/simply-cpp-graphics"
    url "https://github.com/roelofrossouw/simply-cpp-graphics/archive/refs/tags/v6.3.0.tar.gz"
    sha256 "29ed7e0e187304b63ada64be88ca9d925c68e7b0a8b45a4969dec3999eb7670a"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-web"
    depends_on "fontconfig"
    depends_on "freetype"
    depends_on "harfbuzz"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
