class SimplyCppGraphics < Formula
    desc "C++20 drawing interface: canvas, text and fonts, paths and SVG, for image and PDF engines"
    homepage "https://github.com/roelofrossouw/simply-cpp-graphics"
    url "https://github.com/roelofrossouw/simply-cpp-graphics/archive/refs/tags/v8.0.0.tar.gz"
    sha256 "6d41ac305a45163c1ffb6c3f9bb1135506c57e43c6e8586bbde0e45ec84f14e1"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "pkgconf" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-geometry"
    depends_on "simply-cpp-web"
    depends_on "fontconfig"
    depends_on "freetype"
    depends_on "harfbuzz"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_GRAPHICS_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
