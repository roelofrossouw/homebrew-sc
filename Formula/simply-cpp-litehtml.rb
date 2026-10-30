class SimplyCppLitehtml < Formula
    desc "HTML and CSS laid out by litehtml and drawn on any sc::canvas: PDF, images, SVG"
    homepage "https://github.com/roelofrossouw/simply-cpp-litehtml"
    url "https://github.com/roelofrossouw/simply-cpp-litehtml/archive/refs/tags/v1.5.1.tar.gz"
    sha256 "dbdd45346cd589f766b632aca23ab331f08764d022e97a72a82449e57fd6fd96"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-graphics"
    depends_on "simply-cpp-qrencode"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_LITEHTML_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
