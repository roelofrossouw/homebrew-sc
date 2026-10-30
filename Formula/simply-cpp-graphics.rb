class SimplyCppGraphics < Formula
    desc "C++20 drawing interface: canvas, text and fonts, paths and SVG, for image and PDF engines"
    homepage "https://github.com/roelofrossouw/simply-cpp-graphics"
    url "https://github.com/roelofrossouw/simply-cpp-graphics/archive/refs/tags/v6.3.2.tar.gz"
    sha256 "8baa81952149e63b67385a5e43abb535f182b83dd0bfb4f76a34f93e379dccef"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
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
