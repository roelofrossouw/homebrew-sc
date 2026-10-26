class SimplyCppLitehtml < Formula
    desc "HTML and CSS laid out by litehtml and drawn on any sc::canvas: PDF, images, SVG"
    homepage "https://github.com/roelofrossouw/simply-cpp-litehtml"
    url "https://github.com/roelofrossouw/simply-cpp-litehtml/archive/refs/tags/v1.4.1.tar.gz"
    sha256 "96dbfe87286b34f5dae2a4d9e8532c90e6b5472e38703602a772ce062052cc7b"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-graphics"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_LITEHTML_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
