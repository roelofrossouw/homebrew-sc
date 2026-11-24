class SimplyCppLitehtml < Formula
    desc "HTML and CSS laid out by litehtml and drawn on any sc::canvas: PDF, images, SVG"
    homepage "https://github.com/roelofrossouw/simply-cpp-litehtml"
    url "https://github.com/roelofrossouw/simply-cpp-litehtml/archive/refs/tags/v4.0.0.tar.gz"
    sha256 "0c8d6c1b88343b600cdc2085187e9d2e4b95f1dd694be71367cef9d1c10116eb"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-geometry"
    depends_on "simply-cpp-http"
    depends_on "simply-cpp-graphics"
    depends_on "simply-cpp-qrencode"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_LITEHTML_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
