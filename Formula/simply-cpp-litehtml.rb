class SimplyCppLitehtml < Formula
    desc "HTML and CSS laid out by litehtml and drawn on any sc::canvas: PDF, images, SVG"
    homepage "https://github.com/roelofrossouw/simply-cpp-litehtml"
    url "https://github.com/roelofrossouw/simply-cpp-litehtml/archive/refs/tags/v3.0.2.tar.gz"
    sha256 "614297fabd43214eb66c05098d5cb1e7ffd7e5896bc762d77aebffba3bd17508"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-http"
    depends_on "simply-cpp-graphics"
    depends_on "simply-cpp-qrencode"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_LITEHTML_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
